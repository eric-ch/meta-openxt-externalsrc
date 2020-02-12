inherit externalsrc

EXTERNALSRC = "${TOPDIR}/../openxt/xenfb2/linux"
EXTERNALSRC_BUILD = "${TOPDIR}/../openxt/xenfb2/linux"

# externalsrc for out-of-tree kernels require EXTERNALSRC_BUILD.
# When MACHINE changes, the do_prepare_recipe_sysroot need to be run again even
# if things looks like it was already configured.
do_prepare_recipe_sysroot[stamp-extra-info] = "${MACHINE}"
