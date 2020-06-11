# Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`class `[`macc::behav`](#classmacc_1_1behav) | 
`class `[`macc_caux_tb::behav`](#classmacc__caux__tb_1_1behav) | 
`class `[`n_macc_caux_tb::behav`](#classn__macc__caux__tb_1_1behav) | 
`class `[`n_sum_tb::behav`](#classn__sum__tb_1_1behav) | 
`class `[`slide_tb_caux::behav`](#classslide__tb__caux_1_1behav) | 
`class `[`n_macc::behav`](#classn__macc_1_1behav) | 
`class `[`n_product_tb::behav`](#classn__product__tb_1_1behav) | 
`class `[`sum_tb::behav`](#classsum__tb_1_1behav) | 
`class `[`product::comb`](#classproduct_1_1comb) | 
`class `[`slide::comb`](#classslide_1_1comb) | 
`class `[`n_product::comb`](#classn__product_1_1comb) | 
`class `[`sum::comb`](#classsum_1_1comb) | 
`class `[`n_sum::comb`](#classn__sum_1_1comb) | 
`class `[`macc`](#classmacc) | 
`class `[`macc_caux_tb`](#classmacc__caux__tb) | 
`class `[`n_macc`](#classn__macc) | 
`class `[`n_macc_caux_tb`](#classn__macc__caux__tb) | 
`class `[`n_product`](#classn__product) | 
`class `[`n_product_tb`](#classn__product__tb) | 
`class `[`n_sum`](#classn__sum) | digraph n_sum {
`class `[`n_sum_tb`](#classn__sum__tb) | 
`class `[`product`](#classproduct) | 
`class `[`slide`](#classslide) | 
`class `[`slide_tb_caux`](#classslide__tb__caux) | 
`class `[`sum`](#classsum) | 
`class `[`sum_tb`](#classsum__tb) | 

# class `macc::behav` {#classmacc_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public int_arr_t( 0 to    i_window'length( 1)*   i_window'length( 2)- 1) :=( others => 0) `[`s_terms`](#classmacc_1_1behav_1a06b857e4aaaa1d372542bae04e9c15be) | 
`public `[`product`](#classproduct)` `[`p`](#classmacc_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c) | 
`public `[`sum`](#classsum)` `[`s`](#classmacc_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) | 

## Members

#### `public int_arr_t( 0 to    i_window'length( 1)*   i_window'length( 2)- 1) :=( others => 0) `[`s_terms`](#classmacc_1_1behav_1a06b857e4aaaa1d372542bae04e9c15be) {#classmacc_1_1behav_1a06b857e4aaaa1d372542bae04e9c15be}

#### `public `[`product`](#classproduct)` `[`p`](#classmacc_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c) {#classmacc_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c}

#### `public `[`sum`](#classsum)` `[`s`](#classmacc_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) {#classmacc_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84}

# class `macc_caux_tb::behav` {#classmacc__caux__tb_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public :function is    "VHPIDIRECT conv" `[`foreign`](#classmacc__caux__tb_1_1behav_1aa0b0109b377631f97cb8cb64ed440d28) | 
`public :procedure is    "VHPIDIRECT randFill" `[`foreign`](#classmacc__caux__tb_1_1behav_1a7864cd1efa219a03504fbafbeeed91a6) | 
`public int_mat_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1):=( others =>( others => 0)) `[`s_window`](#classmacc__caux__tb_1_1behav_1a3855267fc78f33f23c44b8aec762896d) | 
`public int_mat_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1):=( others =>( others => 0)) `[`s_kernel`](#classmacc__caux__tb_1_1behav_1a5af9f3849ff7be7a854e811c726c5b0e) | 
`public integer := 0 `[`s_macc`](#classmacc__caux__tb_1_1behav_1ac597e638e939be61ca7646cb8131585c) | 
`public `[`macc`](#classmacc)` `[`m`](#classmacc__caux__tb_1_1behav_1ab3cd915d758008bd19d0f2428fbb354a) | 
`public integer `[`c_conv`](#classmacc__caux__tb_1_1behav_1a2ad9990fc43c09892602c787ccf83162)`()` | 
`public  `[`c_randFill`](#classmacc__caux__tb_1_1behav_1a955e10ca5e21c6a77328467e5485f482)`()` | 
`public  `[`PROCESS_0`](#classmacc__caux__tb_1_1behav_1aed1460bea841625ed713788c30ae3e33)`()` | 

## Members

#### `public :function is    "VHPIDIRECT conv" `[`foreign`](#classmacc__caux__tb_1_1behav_1aa0b0109b377631f97cb8cb64ed440d28) {#classmacc__caux__tb_1_1behav_1aa0b0109b377631f97cb8cb64ed440d28}

#### `public :procedure is    "VHPIDIRECT randFill" `[`foreign`](#classmacc__caux__tb_1_1behav_1a7864cd1efa219a03504fbafbeeed91a6) {#classmacc__caux__tb_1_1behav_1a7864cd1efa219a03504fbafbeeed91a6}

#### `public int_mat_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1):=( others =>( others => 0)) `[`s_window`](#classmacc__caux__tb_1_1behav_1a3855267fc78f33f23c44b8aec762896d) {#classmacc__caux__tb_1_1behav_1a3855267fc78f33f23c44b8aec762896d}

#### `public int_mat_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1):=( others =>( others => 0)) `[`s_kernel`](#classmacc__caux__tb_1_1behav_1a5af9f3849ff7be7a854e811c726c5b0e) {#classmacc__caux__tb_1_1behav_1a5af9f3849ff7be7a854e811c726c5b0e}

#### `public integer := 0 `[`s_macc`](#classmacc__caux__tb_1_1behav_1ac597e638e939be61ca7646cb8131585c) {#classmacc__caux__tb_1_1behav_1ac597e638e939be61ca7646cb8131585c}

#### `public `[`macc`](#classmacc)` `[`m`](#classmacc__caux__tb_1_1behav_1ab3cd915d758008bd19d0f2428fbb354a) {#classmacc__caux__tb_1_1behav_1ab3cd915d758008bd19d0f2428fbb354a}

#### `public integer `[`c_conv`](#classmacc__caux__tb_1_1behav_1a2ad9990fc43c09892602c787ccf83162)`()` {#classmacc__caux__tb_1_1behav_1a2ad9990fc43c09892602c787ccf83162}

#### `public  `[`c_randFill`](#classmacc__caux__tb_1_1behav_1a955e10ca5e21c6a77328467e5485f482)`()` {#classmacc__caux__tb_1_1behav_1a955e10ca5e21c6a77328467e5485f482}

#### `public  `[`PROCESS_0`](#classmacc__caux__tb_1_1behav_1aed1460bea841625ed713788c30ae3e33)`()` {#classmacc__caux__tb_1_1behav_1aed1460bea841625ed713788c30ae3e33}

# class `n_macc_caux_tb::behav` {#classn__macc__caux__tb_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public :procedure is    "VHPIDIRECT n_conv" `[`foreign`](#classn__macc__caux__tb_1_1behav_1aaafcdb57b896bb007442d937d9189ef5) | 
`public :procedure is    "VHPIDIRECT randFill" `[`foreign`](#classn__macc__caux__tb_1_1behav_1a7864cd1efa219a03504fbafbeeed91a6) | 
`public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 0))) `[`s_window`](#classn__macc__caux__tb_1_1behav_1a487b2acdf1141173cebd0329b5df8b3c) | 
`public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 0))) `[`s_kernel`](#classn__macc__caux__tb_1_1behav_1a722456ce2f3fff015c7fee777d02eb4d) | 
`public int_arr_t( 0 to    N- 1) :=( others => 0) `[`s_n_macc`](#classn__macc__caux__tb_1_1behav_1a2f4bf66de0dee7650ebc314a01935b40) | 
`public `[`n_macc`](#classn__macc)` `[`m`](#classn__macc__caux__tb_1_1behav_1ab3cd915d758008bd19d0f2428fbb354a) | 
`public  `[`c_n_conv`](#classn__macc__caux__tb_1_1behav_1ac03177470aa9cc4aba4c467b96343364)`()` | 
`public  `[`c_randFill`](#classn__macc__caux__tb_1_1behav_1aaa62f46a28114f6d3a38094a0b2ee52d)`()` | 
`public  `[`PROCESS_1`](#classn__macc__caux__tb_1_1behav_1a5742fe7bf212e020ef29ba1ecac27700)`()` | 

## Members

#### `public :procedure is    "VHPIDIRECT n_conv" `[`foreign`](#classn__macc__caux__tb_1_1behav_1aaafcdb57b896bb007442d937d9189ef5) {#classn__macc__caux__tb_1_1behav_1aaafcdb57b896bb007442d937d9189ef5}

#### `public :procedure is    "VHPIDIRECT randFill" `[`foreign`](#classn__macc__caux__tb_1_1behav_1a7864cd1efa219a03504fbafbeeed91a6) {#classn__macc__caux__tb_1_1behav_1a7864cd1efa219a03504fbafbeeed91a6}

#### `public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 0))) `[`s_window`](#classn__macc__caux__tb_1_1behav_1a487b2acdf1141173cebd0329b5df8b3c) {#classn__macc__caux__tb_1_1behav_1a487b2acdf1141173cebd0329b5df8b3c}

#### `public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 0))) `[`s_kernel`](#classn__macc__caux__tb_1_1behav_1a722456ce2f3fff015c7fee777d02eb4d) {#classn__macc__caux__tb_1_1behav_1a722456ce2f3fff015c7fee777d02eb4d}

#### `public int_arr_t( 0 to    N- 1) :=( others => 0) `[`s_n_macc`](#classn__macc__caux__tb_1_1behav_1a2f4bf66de0dee7650ebc314a01935b40) {#classn__macc__caux__tb_1_1behav_1a2f4bf66de0dee7650ebc314a01935b40}

#### `public `[`n_macc`](#classn__macc)` `[`m`](#classn__macc__caux__tb_1_1behav_1ab3cd915d758008bd19d0f2428fbb354a) {#classn__macc__caux__tb_1_1behav_1ab3cd915d758008bd19d0f2428fbb354a}

#### `public  `[`c_n_conv`](#classn__macc__caux__tb_1_1behav_1ac03177470aa9cc4aba4c467b96343364)`()` {#classn__macc__caux__tb_1_1behav_1ac03177470aa9cc4aba4c467b96343364}

#### `public  `[`c_randFill`](#classn__macc__caux__tb_1_1behav_1aaa62f46a28114f6d3a38094a0b2ee52d)`()` {#classn__macc__caux__tb_1_1behav_1aaa62f46a28114f6d3a38094a0b2ee52d}

#### `public  `[`PROCESS_1`](#classn__macc__caux__tb_1_1behav_1a5742fe7bf212e020ef29ba1ecac27700)`()` {#classn__macc__caux__tb_1_1behav_1a5742fe7bf212e020ef29ba1ecac27700}

# class `n_sum_tb::behav` {#classn__sum__tb_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public int_mat_t ( 0 to    WIDTH- 1, 0 to    N- 1):=( others =>( others => 1)) `[`terms`](#classn__sum__tb_1_1behav_1afbd98b73d1010dc144e14e67903ad6ea) | 
`public int_arr_t( 0 to    N- 1) :=( others => 0) `[`n_summ`](#classn__sum__tb_1_1behav_1aed7736cd05087d5b4ffe350ecd818f89) | 
`public `[`n_sum`](#classn__sum)` `[`s`](#classn__sum__tb_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) | 
`public  `[`PROCESS_4`](#classn__sum__tb_1_1behav_1af0caed2af0190b69030cc982192e635e)`()` | Test the behaviour of [n_sum](#classn__sum).

## Members

#### `public int_mat_t ( 0 to    WIDTH- 1, 0 to    N- 1):=( others =>( others => 1)) `[`terms`](#classn__sum__tb_1_1behav_1afbd98b73d1010dc144e14e67903ad6ea) {#classn__sum__tb_1_1behav_1afbd98b73d1010dc144e14e67903ad6ea}

#### `public int_arr_t( 0 to    N- 1) :=( others => 0) `[`n_summ`](#classn__sum__tb_1_1behav_1aed7736cd05087d5b4ffe350ecd818f89) {#classn__sum__tb_1_1behav_1aed7736cd05087d5b4ffe350ecd818f89}

#### `public `[`n_sum`](#classn__sum)` `[`s`](#classn__sum__tb_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) {#classn__sum__tb_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84}

#### `public  `[`PROCESS_4`](#classn__sum__tb_1_1behav_1af0caed2af0190b69030cc982192e635e)`()` {#classn__sum__tb_1_1behav_1af0caed2af0190b69030cc982192e635e}

Test the behaviour of [n_sum](#classn__sum).

# class `slide_tb_caux::behav` {#classslide__tb__caux_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public int_mat_t ( 0 to    IN_LEN1- 1, 0 to    IN_LEN2- 1):=( others =>( others => 0)) `[`s_in`](#classslide__tb__caux_1_1behav_1afcecdced6a11666dc5cf7ae9cf30a0d1) | 
`public int_3d_t ( 0 to    WINDOW_SIZE( 0)- 1, 0 to    WINDOW_SIZE( 1)- 1, 0 to    WINDOW_COUNT- 1):=( others =>( others =>( others => 0))) `[`s_windows`](#classslide__tb__caux_1_1behav_1aea0e411a4ee4bc5e817f55a559a66e28) | 
`public `[`slide`](#classslide)` `[`s`](#classslide__tb__caux_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) | 

## Members

#### `public int_mat_t ( 0 to    IN_LEN1- 1, 0 to    IN_LEN2- 1):=( others =>( others => 0)) `[`s_in`](#classslide__tb__caux_1_1behav_1afcecdced6a11666dc5cf7ae9cf30a0d1) {#classslide__tb__caux_1_1behav_1afcecdced6a11666dc5cf7ae9cf30a0d1}

#### `public int_3d_t ( 0 to    WINDOW_SIZE( 0)- 1, 0 to    WINDOW_SIZE( 1)- 1, 0 to    WINDOW_COUNT- 1):=( others =>( others =>( others => 0))) `[`s_windows`](#classslide__tb__caux_1_1behav_1aea0e411a4ee4bc5e817f55a559a66e28) {#classslide__tb__caux_1_1behav_1aea0e411a4ee4bc5e817f55a559a66e28}

#### `public `[`slide`](#classslide)` `[`s`](#classslide__tb__caux_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) {#classslide__tb__caux_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84}

# class `n_macc::behav` {#classn__macc_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public int_mat_t ( 0 to    LEN1*   LEN2- 1, 0 to    LEN3- 1):=( others =>( others => 0)) `[`s_terms`](#classn__macc_1_1behav_1a296de355ed703ecb6834e683ecc8911c) | 
`public `[`n_product`](#classn__product)` `[`p`](#classn__macc_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c) | 
`public `[`n_sum`](#classn__sum)` `[`s`](#classn__macc_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) | 

## Members

#### `public int_mat_t ( 0 to    LEN1*   LEN2- 1, 0 to    LEN3- 1):=( others =>( others => 0)) `[`s_terms`](#classn__macc_1_1behav_1a296de355ed703ecb6834e683ecc8911c) {#classn__macc_1_1behav_1a296de355ed703ecb6834e683ecc8911c}

#### `public `[`n_product`](#classn__product)` `[`p`](#classn__macc_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c) {#classn__macc_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c}

#### `public `[`n_sum`](#classn__sum)` `[`s`](#classn__macc_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) {#classn__macc_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84}

# class `n_product_tb::behav` {#classn__product__tb_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 1))) `[`s_terms`](#classn__product__tb_1_1behav_1a046acac0127f3dbbfa83cea32eb82c4d) | 
`public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 0))) `[`s_coeff`](#classn__product__tb_1_1behav_1ae1f8551c86a4a74471118d6354d5554f) | 
`public int_mat_t ( 0 to    WIDTH*   HEIGHT- 1, 0 to    N- 1) `[`s_n_product`](#classn__product__tb_1_1behav_1a554fea9f7124c96d850d324f14ae0556) | 
`public `[`n_product`](#classn__product)` `[`p`](#classn__product__tb_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c) | 
`public  `[`PROCESS_2`](#classn__product__tb_1_1behav_1a031269c3515f7279dab9aede82457a06)`()` | 

## Members

#### `public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 1))) `[`s_terms`](#classn__product__tb_1_1behav_1a046acac0127f3dbbfa83cea32eb82c4d) {#classn__product__tb_1_1behav_1a046acac0127f3dbbfa83cea32eb82c4d}

#### `public int_3d_t ( 0 to    WIDTH- 1, 0 to    HEIGHT- 1, 0 to    N- 1):=( others =>( others =>( others => 0))) `[`s_coeff`](#classn__product__tb_1_1behav_1ae1f8551c86a4a74471118d6354d5554f) {#classn__product__tb_1_1behav_1ae1f8551c86a4a74471118d6354d5554f}

#### `public int_mat_t ( 0 to    WIDTH*   HEIGHT- 1, 0 to    N- 1) `[`s_n_product`](#classn__product__tb_1_1behav_1a554fea9f7124c96d850d324f14ae0556) {#classn__product__tb_1_1behav_1a554fea9f7124c96d850d324f14ae0556}

#### `public `[`n_product`](#classn__product)` `[`p`](#classn__product__tb_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c) {#classn__product__tb_1_1behav_1ac483f6ce851c9ecd9fb835ff7551737c}

#### `public  `[`PROCESS_2`](#classn__product__tb_1_1behav_1a031269c3515f7279dab9aede82457a06)`()` {#classn__product__tb_1_1behav_1a031269c3515f7279dab9aede82457a06}

# class `sum_tb::behav` {#classsum__tb_1_1behav}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public int_arr_t( 0 to    WIDTH- 1) :=( others => 1) `[`terms`](#classsum__tb_1_1behav_1a532f53f46c249d37a81693b4780ab78e) | 
`public integer := 0 `[`summ`](#classsum__tb_1_1behav_1a2485bc0d1fa75eac46689c1bc124ab72) | 
`public `[`sum`](#classsum)` `[`s`](#classsum__tb_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) | 
`public  `[`PROCESS_6`](#classsum__tb_1_1behav_1abb10532f24975e6cbac39a115779dba0)`()` | 

## Members

#### `public int_arr_t( 0 to    WIDTH- 1) :=( others => 1) `[`terms`](#classsum__tb_1_1behav_1a532f53f46c249d37a81693b4780ab78e) {#classsum__tb_1_1behav_1a532f53f46c249d37a81693b4780ab78e}

#### `public integer := 0 `[`summ`](#classsum__tb_1_1behav_1a2485bc0d1fa75eac46689c1bc124ab72) {#classsum__tb_1_1behav_1a2485bc0d1fa75eac46689c1bc124ab72}

#### `public `[`sum`](#classsum)` `[`s`](#classsum__tb_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84) {#classsum__tb_1_1behav_1a3691308f2a4c2f6983f2880d32e29c84}

#### `public  `[`PROCESS_6`](#classsum__tb_1_1behav_1abb10532f24975e6cbac39a115779dba0)`()` {#classsum__tb_1_1behav_1abb10532f24975e6cbac39a115779dba0}

# class `product::comb` {#classproduct_1_1comb}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------

## Members

# class `slide::comb` {#classslide_1_1comb}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------

## Members

# class `n_product::comb` {#classn__product_1_1comb}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------

## Members

# class `sum::comb` {#classsum_1_1comb}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`PROCESS_5`](#classsum_1_1comb_1af450c291844579df87a3df4253878825)`()` | 

## Members

#### `public  `[`PROCESS_5`](#classsum_1_1comb_1af450c291844579df87a3df4253878825)`()` {#classsum_1_1comb_1af450c291844579df87a3df4253878825}

# class `n_sum::comb` {#classn__sum_1_1comb}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`PROCESS_3`](#classn__sum_1_1comb_1a2b4a082ce3208c7cdb7e13620e38578d)`()` | 

## Members

#### `public  `[`PROCESS_3`](#classn__sum_1_1comb_1a2b4a082ce3208c7cdb7e13620e38578d)`()` {#classn__sum_1_1comb_1a2b4a082ce3208c7cdb7e13620e38578d}

# class `macc` {#classmacc}

```
class macc
  : public product
  : public sum
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`REVERSE_COEFF`](#classmacc_1a015c73f115f17b71f0c1e1e283244668) | 
`public in `[`i_window`](#classmacc_1af589ddf6afa9732265a30fa5a6c7257b) | 
`public in `[`i_kernel`](#classmacc_1a874d3ddbf8d838c416fa8bc5d057094c) | 
`public out `[`o_macc`](#classmacc_1a1db3e5e57f438704c2a7164422a46bc1) | 
`public _use_ `[`int_arr`](#classmacc_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`REVERSE_COEFF`](#classmacc_1a015c73f115f17b71f0c1e1e283244668) {#classmacc_1a015c73f115f17b71f0c1e1e283244668}

#### `public in `[`i_window`](#classmacc_1af589ddf6afa9732265a30fa5a6c7257b) {#classmacc_1af589ddf6afa9732265a30fa5a6c7257b}

#### `public in `[`i_kernel`](#classmacc_1a874d3ddbf8d838c416fa8bc5d057094c) {#classmacc_1a874d3ddbf8d838c416fa8bc5d057094c}

#### `public out `[`o_macc`](#classmacc_1a1db3e5e57f438704c2a7164422a46bc1) {#classmacc_1a1db3e5e57f438704c2a7164422a46bc1}

#### `public _use_ `[`int_arr`](#classmacc_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classmacc_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `macc_caux_tb` {#classmacc__caux__tb}

```
class macc_caux_tb
  : public macc
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`WIDTH`](#classmacc__caux__tb_1af4860af6be4c7777be4458c57ead9b22) | 
`public  `[`HEIGHT`](#classmacc__caux__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519) | 
`public  `[`REVERSE_COEFF`](#classmacc__caux__tb_1a015c73f115f17b71f0c1e1e283244668) | 
`public _use_ `[`int_arr`](#classmacc__caux__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`WIDTH`](#classmacc__caux__tb_1af4860af6be4c7777be4458c57ead9b22) {#classmacc__caux__tb_1af4860af6be4c7777be4458c57ead9b22}

#### `public  `[`HEIGHT`](#classmacc__caux__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519) {#classmacc__caux__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519}

#### `public  `[`REVERSE_COEFF`](#classmacc__caux__tb_1a015c73f115f17b71f0c1e1e283244668) {#classmacc__caux__tb_1a015c73f115f17b71f0c1e1e283244668}

#### `public _use_ `[`int_arr`](#classmacc__caux__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classmacc__caux__tb_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `n_macc` {#classn__macc}

```
class n_macc
  : public n_product
  : public n_sum
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`REVERSE_COEFF`](#classn__macc_1a015c73f115f17b71f0c1e1e283244668) | 
`public in `[`i_window`](#classn__macc_1a5ebe5dc8b86c61e5b920c81824a5dbf9) | 
`public in `[`i_kernel`](#classn__macc_1a450b222f85a435b0a34cc4e8e5a08a10) | 
`public out `[`o_n_macc`](#classn__macc_1a0d8905b8fac5d21c3a81b867b2883b8f) | 
`public integer :=   i_window'length( 1) `[`LEN1`](#classn__macc_1ad180f69a50aee13c52107bec0a729382) | 
`public integer :=   i_window'length( 2) `[`LEN2`](#classn__macc_1a42ac0bb79a533d0e975c196278708964) | 
`public integer :=   i_window'length( 3) `[`LEN3`](#classn__macc_1ae125806e1f23d55c76fb281055e1e9a8) | 
`public _use_ `[`int_arr`](#classn__macc_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`REVERSE_COEFF`](#classn__macc_1a015c73f115f17b71f0c1e1e283244668) {#classn__macc_1a015c73f115f17b71f0c1e1e283244668}

#### `public in `[`i_window`](#classn__macc_1a5ebe5dc8b86c61e5b920c81824a5dbf9) {#classn__macc_1a5ebe5dc8b86c61e5b920c81824a5dbf9}

#### `public in `[`i_kernel`](#classn__macc_1a450b222f85a435b0a34cc4e8e5a08a10) {#classn__macc_1a450b222f85a435b0a34cc4e8e5a08a10}

#### `public out `[`o_n_macc`](#classn__macc_1a0d8905b8fac5d21c3a81b867b2883b8f) {#classn__macc_1a0d8905b8fac5d21c3a81b867b2883b8f}

#### `public integer :=   i_window'length( 1) `[`LEN1`](#classn__macc_1ad180f69a50aee13c52107bec0a729382) {#classn__macc_1ad180f69a50aee13c52107bec0a729382}

#### `public integer :=   i_window'length( 2) `[`LEN2`](#classn__macc_1a42ac0bb79a533d0e975c196278708964) {#classn__macc_1a42ac0bb79a533d0e975c196278708964}

#### `public integer :=   i_window'length( 3) `[`LEN3`](#classn__macc_1ae125806e1f23d55c76fb281055e1e9a8) {#classn__macc_1ae125806e1f23d55c76fb281055e1e9a8}

#### `public _use_ `[`int_arr`](#classn__macc_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classn__macc_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `n_macc_caux_tb` {#classn__macc__caux__tb}

```
class n_macc_caux_tb
  : public n_macc
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`WIDTH`](#classn__macc__caux__tb_1af4860af6be4c7777be4458c57ead9b22) | 
`public  `[`HEIGHT`](#classn__macc__caux__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519) | 
`public  `[`N`](#classn__macc__caux__tb_1ad55b24577e52e0166994098b64e8588a) | 
`public  `[`REVERSE_COEFF`](#classn__macc__caux__tb_1a015c73f115f17b71f0c1e1e283244668) | 
`public _use_ `[`int_arr`](#classn__macc__caux__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`WIDTH`](#classn__macc__caux__tb_1af4860af6be4c7777be4458c57ead9b22) {#classn__macc__caux__tb_1af4860af6be4c7777be4458c57ead9b22}

#### `public  `[`HEIGHT`](#classn__macc__caux__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519) {#classn__macc__caux__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519}

#### `public  `[`N`](#classn__macc__caux__tb_1ad55b24577e52e0166994098b64e8588a) {#classn__macc__caux__tb_1ad55b24577e52e0166994098b64e8588a}

#### `public  `[`REVERSE_COEFF`](#classn__macc__caux__tb_1a015c73f115f17b71f0c1e1e283244668) {#classn__macc__caux__tb_1a015c73f115f17b71f0c1e1e283244668}

#### `public _use_ `[`int_arr`](#classn__macc__caux__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classn__macc__caux__tb_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `n_product` {#classn__product}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`REVERSE_COEFF`](#classn__product_1aac1116895f14a2b358e4ca132749e170) | 
`public in `[`i_terms`](#classn__product_1a36eae7a54bf2229f76fd09b28f4bbbbd) | 
`public in `[`i_coeff`](#classn__product_1aa646023603250d012027ce01d3e6fead) | 
`public out `[`o_n_product`](#classn__product_1ace2b981d78f626c07c93bca2e4b95e8e) | 
`public integer :=   i_terms'length( 1) `[`LEN1`](#classn__product_1a139417de078901d0496b7529fd2893a1) | 
`public integer :=   i_terms'length( 2) `[`LEN2`](#classn__product_1a30c9f01e7e55007290db663dd617cd2a) | 
`public integer :=   i_terms'length( 3) `[`LEN3`](#classn__product_1aa12267fc66c2a17bdbc44f1e82392a8d) | 
`public _use_ `[`int_arr`](#classn__product_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`REVERSE_COEFF`](#classn__product_1aac1116895f14a2b358e4ca132749e170) {#classn__product_1aac1116895f14a2b358e4ca132749e170}

#### `public in `[`i_terms`](#classn__product_1a36eae7a54bf2229f76fd09b28f4bbbbd) {#classn__product_1a36eae7a54bf2229f76fd09b28f4bbbbd}

#### `public in `[`i_coeff`](#classn__product_1aa646023603250d012027ce01d3e6fead) {#classn__product_1aa646023603250d012027ce01d3e6fead}

#### `public out `[`o_n_product`](#classn__product_1ace2b981d78f626c07c93bca2e4b95e8e) {#classn__product_1ace2b981d78f626c07c93bca2e4b95e8e}

#### `public integer :=   i_terms'length( 1) `[`LEN1`](#classn__product_1a139417de078901d0496b7529fd2893a1) {#classn__product_1a139417de078901d0496b7529fd2893a1}

#### `public integer :=   i_terms'length( 2) `[`LEN2`](#classn__product_1a30c9f01e7e55007290db663dd617cd2a) {#classn__product_1a30c9f01e7e55007290db663dd617cd2a}

#### `public integer :=   i_terms'length( 3) `[`LEN3`](#classn__product_1aa12267fc66c2a17bdbc44f1e82392a8d) {#classn__product_1aa12267fc66c2a17bdbc44f1e82392a8d}

#### `public _use_ `[`int_arr`](#classn__product_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classn__product_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `n_product_tb` {#classn__product__tb}

```
class n_product_tb
  : public n_product
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`WIDTH`](#classn__product__tb_1af4860af6be4c7777be4458c57ead9b22) | 
`public  `[`HEIGHT`](#classn__product__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519) | 
`public  `[`N`](#classn__product__tb_1ad666129a084804ecf15cc274add124ee) | 
`public  `[`REVERSE_COEFF`](#classn__product__tb_1aa4b42c7caff25c7e951e7a221a9fa5d7) | 
`public _use_ `[`int_arr`](#classn__product__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`WIDTH`](#classn__product__tb_1af4860af6be4c7777be4458c57ead9b22) {#classn__product__tb_1af4860af6be4c7777be4458c57ead9b22}

#### `public  `[`HEIGHT`](#classn__product__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519) {#classn__product__tb_1aa6d44d90ba9a48494dfa7c64f3a0b519}

#### `public  `[`N`](#classn__product__tb_1ad666129a084804ecf15cc274add124ee) {#classn__product__tb_1ad666129a084804ecf15cc274add124ee}

#### `public  `[`REVERSE_COEFF`](#classn__product__tb_1aa4b42c7caff25c7e951e7a221a9fa5d7) {#classn__product__tb_1aa4b42c7caff25c7e951e7a221a9fa5d7}

#### `public _use_ `[`int_arr`](#classn__product__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classn__product__tb_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `n_sum` {#classn__sum}

digraph n_sum {
     rankdir=LR;
     size="8,5"
     node [shape = circle];
     S0 -> S1 [ label = "010" ] 
     S1 -> S0 [ label = "000" ]
     S1 -> S2 [ label = "111" ]
     S2 -> S0 [ label = "101" ]
 }

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public in `[`i_terms`](#classn__sum_1a1e490a8b8d81c637041d0ed4151ac3de) | 
`public out `[`o_n_sum`](#classn__sum_1ad04d4b367a0569d6346a8a02ba6d8b03) | 
`public _use_ `[`int_arr`](#classn__sum_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public in `[`i_terms`](#classn__sum_1a1e490a8b8d81c637041d0ed4151ac3de) {#classn__sum_1a1e490a8b8d81c637041d0ed4151ac3de}

#### `public out `[`o_n_sum`](#classn__sum_1ad04d4b367a0569d6346a8a02ba6d8b03) {#classn__sum_1ad04d4b367a0569d6346a8a02ba6d8b03}

#### `public _use_ `[`int_arr`](#classn__sum_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classn__sum_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `n_sum_tb` {#classn__sum__tb}

```
class n_sum_tb
  : public n_sum
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`WIDTH`](#classn__sum__tb_1a9c7724abc45c0e46577182897ca7e90e) | 
`public  `[`N`](#classn__sum__tb_1ad55b24577e52e0166994098b64e8588a) | 
`public _use_ `[`int_arr`](#classn__sum__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`WIDTH`](#classn__sum__tb_1a9c7724abc45c0e46577182897ca7e90e) {#classn__sum__tb_1a9c7724abc45c0e46577182897ca7e90e}

#### `public  `[`N`](#classn__sum__tb_1ad55b24577e52e0166994098b64e8588a) {#classn__sum__tb_1ad55b24577e52e0166994098b64e8588a}

#### `public _use_ `[`int_arr`](#classn__sum__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classn__sum__tb_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `product` {#classproduct}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`REVERSE_COEFF`](#classproduct_1aac1116895f14a2b358e4ca132749e170) | 
`public in `[`i_terms`](#classproduct_1a1e490a8b8d81c637041d0ed4151ac3de) | 
`public in `[`i_coeff`](#classproduct_1aae838ca4e953e7ae750a321d1fde61bb) | 
`public out `[`o_product`](#classproduct_1af6ab13c539e0b7946678e8aea4ad50f4) | 
`public integer :=   i_terms'length( 1) `[`LEN1`](#classproduct_1a139417de078901d0496b7529fd2893a1) | 
`public integer :=   i_terms'length( 2) `[`LEN2`](#classproduct_1a30c9f01e7e55007290db663dd617cd2a) | 
`public _use_ `[`int_arr`](#classproduct_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`REVERSE_COEFF`](#classproduct_1aac1116895f14a2b358e4ca132749e170) {#classproduct_1aac1116895f14a2b358e4ca132749e170}

#### `public in `[`i_terms`](#classproduct_1a1e490a8b8d81c637041d0ed4151ac3de) {#classproduct_1a1e490a8b8d81c637041d0ed4151ac3de}

#### `public in `[`i_coeff`](#classproduct_1aae838ca4e953e7ae750a321d1fde61bb) {#classproduct_1aae838ca4e953e7ae750a321d1fde61bb}

#### `public out `[`o_product`](#classproduct_1af6ab13c539e0b7946678e8aea4ad50f4) {#classproduct_1af6ab13c539e0b7946678e8aea4ad50f4}

#### `public integer :=   i_terms'length( 1) `[`LEN1`](#classproduct_1a139417de078901d0496b7529fd2893a1) {#classproduct_1a139417de078901d0496b7529fd2893a1}

#### `public integer :=   i_terms'length( 2) `[`LEN2`](#classproduct_1a30c9f01e7e55007290db663dd617cd2a) {#classproduct_1a30c9f01e7e55007290db663dd617cd2a}

#### `public _use_ `[`int_arr`](#classproduct_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classproduct_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `slide` {#classslide}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`WINDOW_SIZE`](#classslide_1a91b66019c3a9882200fa6ad4aa990bd1) | 
`public  `[`WINDOW_STRIDE`](#classslide_1a08d01c04fe86810d86da6946c6bbbea5) | 
`public in `[`i_in`](#classslide_1a0f5bd1417751be61ec9dc0e014c1ecd1) | 
`public out `[`o_windows`](#classslide_1ac8667d09263a09f6edb082093a8a6f0c) | 
`public integer :=   i_in'length( 1) `[`IN_LEN1`](#classslide_1afbdee8a717f8910c70884a1c95ac5f85) | 
`public integer :=   i_in'length( 2) `[`IN_LEN2`](#classslide_1ae9fb1e414e0f3c0bd76469b4f984d6ee) | 
`public integer := 1+(   IN_LEN1-   WINDOW_SIZE( 0)/   WINDOW_STRIDE( 0)) `[`WINDOW_COUNT_1`](#classslide_1a939381719fedaf493cd9c181ace319a8) | 
`public integer := 1+(   IN_LEN2-   WINDOW_SIZE( 1)/   WINDOW_STRIDE( 1)) `[`WINDOW_COUNT_2`](#classslide_1a417518288a6ea62c4bbb56256e58d263) | 
`public _use_ `[`int_arr`](#classslide_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`WINDOW_SIZE`](#classslide_1a91b66019c3a9882200fa6ad4aa990bd1) {#classslide_1a91b66019c3a9882200fa6ad4aa990bd1}

#### `public  `[`WINDOW_STRIDE`](#classslide_1a08d01c04fe86810d86da6946c6bbbea5) {#classslide_1a08d01c04fe86810d86da6946c6bbbea5}

#### `public in `[`i_in`](#classslide_1a0f5bd1417751be61ec9dc0e014c1ecd1) {#classslide_1a0f5bd1417751be61ec9dc0e014c1ecd1}

#### `public out `[`o_windows`](#classslide_1ac8667d09263a09f6edb082093a8a6f0c) {#classslide_1ac8667d09263a09f6edb082093a8a6f0c}

#### `public integer :=   i_in'length( 1) `[`IN_LEN1`](#classslide_1afbdee8a717f8910c70884a1c95ac5f85) {#classslide_1afbdee8a717f8910c70884a1c95ac5f85}

#### `public integer :=   i_in'length( 2) `[`IN_LEN2`](#classslide_1ae9fb1e414e0f3c0bd76469b4f984d6ee) {#classslide_1ae9fb1e414e0f3c0bd76469b4f984d6ee}

#### `public integer := 1+(   IN_LEN1-   WINDOW_SIZE( 0)/   WINDOW_STRIDE( 0)) `[`WINDOW_COUNT_1`](#classslide_1a939381719fedaf493cd9c181ace319a8) {#classslide_1a939381719fedaf493cd9c181ace319a8}

#### `public integer := 1+(   IN_LEN2-   WINDOW_SIZE( 1)/   WINDOW_STRIDE( 1)) `[`WINDOW_COUNT_2`](#classslide_1a417518288a6ea62c4bbb56256e58d263) {#classslide_1a417518288a6ea62c4bbb56256e58d263}

#### `public _use_ `[`int_arr`](#classslide_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classslide_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `slide_tb_caux` {#classslide__tb__caux}

```
class slide_tb_caux
  : public slide
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`WINDOW_SIZE`](#classslide__tb__caux_1a6b1c75d02b4bfee6faf1bd634f2135e9) | 
`public  `[`WINDOW_STRIDE`](#classslide__tb__caux_1ad74e82ca8dc7933c7567d5380e6ef86a) | 
`public  `[`IN_SIZE`](#classslide__tb__caux_1a1ca649fa8c8b9ac4fc67505f8c5d9a81) | 
`public integer :=   IN_SIZE( 0) `[`IN_LEN1`](#classslide__tb__caux_1a4ff5d3c0d5e6d97736fa7a8afe3cefd3) | 
`public integer :=   IN_SIZE( 1) `[`IN_LEN2`](#classslide__tb__caux_1ad710706411abfad34ed22929549691bb) | 
`public integer := 1+(   IN_LEN1-   WINDOW_SIZE( 0)/   WINDOW_STRIDE( 0)) `[`WINDOW_COUNT_1`](#classslide__tb__caux_1a939381719fedaf493cd9c181ace319a8) | 
`public integer := 1+(   IN_LEN2-   WINDOW_SIZE( 1)/   WINDOW_STRIDE( 1)) `[`WINDOW_COUNT_2`](#classslide__tb__caux_1a417518288a6ea62c4bbb56256e58d263) | 
`public integer :=   WINDOW_COUNT_1*   WINDOW_COUNT_2 `[`WINDOW_COUNT`](#classslide__tb__caux_1aa772ff8284fbe81cc89f371c38da0828) | 
`public _use_ `[`int_arr`](#classslide__tb__caux_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`WINDOW_SIZE`](#classslide__tb__caux_1a6b1c75d02b4bfee6faf1bd634f2135e9) {#classslide__tb__caux_1a6b1c75d02b4bfee6faf1bd634f2135e9}

#### `public  `[`WINDOW_STRIDE`](#classslide__tb__caux_1ad74e82ca8dc7933c7567d5380e6ef86a) {#classslide__tb__caux_1ad74e82ca8dc7933c7567d5380e6ef86a}

#### `public  `[`IN_SIZE`](#classslide__tb__caux_1a1ca649fa8c8b9ac4fc67505f8c5d9a81) {#classslide__tb__caux_1a1ca649fa8c8b9ac4fc67505f8c5d9a81}

#### `public integer :=   IN_SIZE( 0) `[`IN_LEN1`](#classslide__tb__caux_1a4ff5d3c0d5e6d97736fa7a8afe3cefd3) {#classslide__tb__caux_1a4ff5d3c0d5e6d97736fa7a8afe3cefd3}

#### `public integer :=   IN_SIZE( 1) `[`IN_LEN2`](#classslide__tb__caux_1ad710706411abfad34ed22929549691bb) {#classslide__tb__caux_1ad710706411abfad34ed22929549691bb}

#### `public integer := 1+(   IN_LEN1-   WINDOW_SIZE( 0)/   WINDOW_STRIDE( 0)) `[`WINDOW_COUNT_1`](#classslide__tb__caux_1a939381719fedaf493cd9c181ace319a8) {#classslide__tb__caux_1a939381719fedaf493cd9c181ace319a8}

#### `public integer := 1+(   IN_LEN2-   WINDOW_SIZE( 1)/   WINDOW_STRIDE( 1)) `[`WINDOW_COUNT_2`](#classslide__tb__caux_1a417518288a6ea62c4bbb56256e58d263) {#classslide__tb__caux_1a417518288a6ea62c4bbb56256e58d263}

#### `public integer :=   WINDOW_COUNT_1*   WINDOW_COUNT_2 `[`WINDOW_COUNT`](#classslide__tb__caux_1aa772ff8284fbe81cc89f371c38da0828) {#classslide__tb__caux_1aa772ff8284fbe81cc89f371c38da0828}

#### `public _use_ `[`int_arr`](#classslide__tb__caux_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classslide__tb__caux_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `sum` {#classsum}

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public in `[`i_terms`](#classsum_1aa49dbe0149b92efb26ed5a627ec16bed) | 
`public out `[`o_sum`](#classsum_1a2d1d3b5c8f112f3756b606e6f2261876) | 
`public _use_ `[`int_arr`](#classsum_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public in `[`i_terms`](#classsum_1aa49dbe0149b92efb26ed5a627ec16bed) {#classsum_1aa49dbe0149b92efb26ed5a627ec16bed}

#### `public out `[`o_sum`](#classsum_1a2d1d3b5c8f112f3756b606e6f2261876) {#classsum_1a2d1d3b5c8f112f3756b606e6f2261876}

#### `public _use_ `[`int_arr`](#classsum_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classsum_1ad0d7f4c2a67b82aa54629ddad44c7284}

# class `sum_tb` {#classsum__tb}

```
class sum_tb
  : public sum
```  

## Summary

 Members                        | Descriptions                                
--------------------------------|---------------------------------------------
`public  `[`WIDTH`](#classsum__tb_1a9c7724abc45c0e46577182897ca7e90e) | 
`public _use_ `[`int_arr`](#classsum__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) | 

## Members

#### `public  `[`WIDTH`](#classsum__tb_1a9c7724abc45c0e46577182897ca7e90e) {#classsum__tb_1a9c7724abc45c0e46577182897ca7e90e}

#### `public _use_ `[`int_arr`](#classsum__tb_1ad0d7f4c2a67b82aa54629ddad44c7284) {#classsum__tb_1ad0d7f4c2a67b82aa54629ddad44c7284}

Generated by [Moxygen](https://sourcey.com/moxygen)