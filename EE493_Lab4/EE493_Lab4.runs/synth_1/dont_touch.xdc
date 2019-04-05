# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/img_dvi_top.xdc

# Block Designs: bd/picture/picture.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==picture || ORIG_REF_NAME==picture} -quiet] -quiet

# IP: bd/picture/ip/picture_blk_mem_gen_0_0/picture_blk_mem_gen_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==picture_blk_mem_gen_0_0 || ORIG_REF_NAME==picture_blk_mem_gen_0_0} -quiet] -quiet

# Block Designs: bd/clk_40_200MHz/clk_40_200MHz.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==clk_40_200MHz || ORIG_REF_NAME==clk_40_200MHz} -quiet] -quiet

# IP: bd/clk_40_200MHz/ip/clk_40_200MHz_clk_wiz_0_1/clk_40_200MHz_clk_wiz_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==clk_40_200MHz_clk_wiz_0_1 || ORIG_REF_NAME==clk_40_200MHz_clk_wiz_0_1} -quiet] -quiet

# XDC: bd/picture/picture_ooc.xdc

# XDC: bd/clk_40_200MHz/clk_40_200MHz_ooc.xdc
