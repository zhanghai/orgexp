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
	li	$t0, 0xD0000000
	lw	$t1, ($t0)
	li	$t0, 0xD0000001
	sw	$t1, ($t0)
	li	$t0, 0xD0000004
	sw	$t1, ($t0)
	li	$t0, 0xD0000010
	sw	$t1, ($t0)
	li	$t0, 0xDFFFFFFF
	li	$t1, 0xFFFFFFFF
	sw	$t1, ($t0)
	j start
