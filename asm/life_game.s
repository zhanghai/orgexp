// $s0: world_index.
// $s1: Current row index, 0 to 47.
// $s2: Current block index, 0 to 1.
// $s3: Current in-block column index, 0 to 31.
// $s4: Current adjacent sum.
// $s5: Current next block.
// $t4: Loaded cell, or generic temp.

// Constants
	.eval	LG_ADDR = 0xD0000000;
	.eval	LG_IDX_ADDR = 0xD000007F;
	.eval	ROW_MAX = 48 * 2;
	.eval	ROW_INC = 2;
	.eval	COL_MAX = 32;

start:
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
// Save the next block at $s1, $s2
// @temp: $t4
save_next_block:
	move	$s3, $zero
	move	$s5, $zero
save_next_block_cell:
	jal	save_next_cell
	// Advance the cell (within this block).
	addi	$s3, $s3, 1
	slti	$t4, $s3, COL_MAX
	beq	$t4, $zero, save_next_block_cell
	// All next in-block cells saved to $s5, save this block.
	jal	save_block
	// Advance the block
	jal	advance_block
	// Check if we have done a world
	slti	$t4, $s1, 1
	slti	$t5, $s2, 1
	and	$t4, $t4, $t5
	beq	$t4, $zero, save_next_block
	// We have done a world, update the world index
	jal	save_world
	j	save_next_block

// Set $s1, $s2 to the block after it, wraps around if out of range.
// @ra: $s6
advance_block:
	move	$s6, $ra
	beq	$s2, $zero, advance_block_at_left
	// Advance a block at right to the next row
	jal	set_bottom
	move	$s1, $t1
	move	$s2, $zero
	j	advance_block_return
advance_block_at_left:
	addi	$s2, $s2, 1
advance_block_return:
	move	$ra, $s6
	jr	$ra

// Save the next cell at $s1, $s2, $s3 to block $s1, $s2.
// @ra $s6
save_next_cell:
	move	$s6, $ra
	move	$s4, $zero
	// Top
	jal	set_top
	// Left
	jal	set_left
	jal	add_cell
	// Horizontal center
	jal	set_horizontal_center
	jal	add_cell
	// Right
	jal	set_right
	jal	add_cell
	// Vertical center
	jal	set_vertical_center
	// Left
	jal	set_left
	jal	add_cell
	// Right
	jal	set_right
	jal	add_cell
	// Bottom
	jal	set_bottom
	// Left
	jal	set_left
	jal	add_cell
	// Horizontal center
	jal	set_horizontal_center
	jal	add_cell
	// Right
	jal	set_right
	jal	add_cell
	// Set
	jal	set_horizontal_center
	jal	set_vertical_center
	li	$t4, 2
	beq	$s4, $t4, save_next_cell_keep
	li	$t4, 3
	beq	$s4, $t4, save_next_cell_alive
	j	save_next_cell_dead
save_next_cell_keep:
	jal	load_cell
	j	save_next_cell_save
save_next_cell_alive:
	li	$t4, 1
	j	save_next_cell_save
save_next_cell_dead:
	move	$t4, $zero
	j	save_next_cell_save
save_next_cell_save:
	jal	save_cell
	// Return
	move	$ra, $s6
	jr	$ra

// Set $t1 to $s1.
set_vertical_center:
	move	$t1, $s1
	jr	$ra

// Set $t1 to top of $s1, wraps around if out of range.
// @temp $t4
set_top:
	addi	$t1, $s1, -ROW_INC
	slti	$t4, $t1, 0
	beq	$t4, $zero, set_top_return
	addi	$t1, $t1, ROW_MAX
set_top_return:
	jr	$ra

// Set $t1 to bottom of $s1, wraps around if out of range.
// @temp $t4
set_bottom:
	addi	$t1, $s1, ROW_INC
	slti	$t4, $t1, ROW_MAX
	bne	$t4, $zero, set_bottom_return
	addi	$t1, $t1, -ROW_MAX
set_bottom_return:
	jr	$ra

// Set $t2, $t3 to $s2, $s3.
set_horizontal_center:
	move	$t2, $s2
	move	$t3, $s3
	jr	$ra

// Set $t2, $t3 to left of $s2, $s3, wraps around if out of range.
// @temp $t4
set_left:
	addi	$t3, $s3, -1
	slti	$t4, $t3, 0
	beq	$t4, $zero, set_left_return
	addi	$t3, $t3, COL_MAX
	xori	$t2, $t2, 1
set_left_return:
	jr	$ra

// Set $t2, $t3 to right of $s2, $s3.
// @temp $t4
set_right:
	addi	$t3, $s3, 1
	slti	$t4, $t3, COL_MAX
	bne	$t4, $zero, set_right_return
	addi	$t3, $t3, -COL_MAX
	xori	$t2, $t2, 1
set_right_return:
	jr	$ra

// Load the cell at $t1, $t2, $t3 into $t4.
// @temp: $5
load_cell:
	or	$t4, $t1, $t2
	li	$t5, LG_ADDR
	or	$t4, $t4, $t5
	lw	$t4, 0($t4)
	srlv	$t4, $t4, $s3
	andi	$t4, $t4, 1
	jr	$ra

// Load a cell at $t1, $t2, $t3 to $t4 and add it to $s4.
// @ra $s7
add_cell:
	move	$s7, $ra
	jal	load_cell
	move	$ra, $s7
	add	$s4, $s4, $t4
	jr	$ra

// Save the cell at ($s1, $s2,) $s3 from $t4 to $s5.
save_cell:
	sllv	$t4, $t4, $s3
	or	$s5, $s5, $s3
	jr	$ra

// Save the block at $s1, $s2 from $s5.
// @temp $t4, $t5
save_block:
	or	$t4, $s1, $s2
	li	$t5, LG_ADDR
	or	$t4, $t4, $t5
	sw	$s5, 0($t4)
	jr	$ra

// Save the world!
// Flip $s0 and set world index to it.
// @temp: $t4
save_world:
	xori	$s0, $s0, 1
	li	$t4, LG_IDX_ADDR
	sw	$s0, 0($t4)
	jr	$ra
