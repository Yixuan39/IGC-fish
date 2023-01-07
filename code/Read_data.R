rm(list = ls())
load('Rdata/failed_data.Rdata')
source('./code/Functions.R')

##### Homo model
path = './input_files/fish/Single_Analysis/'
IGC1_Homo = IGC_summary(str_c(path, 'IGC1_Homo'), filter='included')
IGC1_forceTau_Homo = IGC_summary(str_c(path, 'IGC1_forceTau_Homo'), filter='included')
IGC1_Original = IGC_summary(str_c(path, 'IGC1_Original'), filter='included')
IGC1_forceTau_Original = IGC_summary(str_c(path, 'IGC1_forceTau_Original'), filter='included')

## swap test
IGC1_Homo_swap = IGC_summary(str_c(path, 'IGC1_Homo_swap'), filter='included')
IGC1_forceTau_Homo_swap = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_swap'), filter='included')
IGC1_Original_swap = IGC_summary(str_c(path, 'IGC1_Original_swap'), filter='included')
IGC1_forceTau_Original_swap = IGC_summary(str_c(path, 'IGC1_forceTau_Original_swap'), filter='included')

IGC1_Homo_switch = IGC_summary(str_c(path, 'IGC1_Homo_switch'), filter='included')
IGC1_forceTau_Homo_switch = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_switch'), filter='included')
IGC1_Original_switch = IGC_summary(str_c(path, 'IGC1_Original_switch'), filter='included')
IGC1_forceTau_Original_switch = IGC_summary(str_c(path, 'IGC1_forceTau_Original_switch'), filter='included')

IGC1_Homo_swap_switch = IGC_summary(str_c(path, 'IGC1_Homo_swap_switch'), filter='included')
IGC1_forceTau_Homo_swap_switch = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_swap_switch'), filter='included')
IGC1_Original_swap_switch = IGC_summary(str_c(path, 'IGC1_Original_swap_switch'), filter='included')
IGC1_forceTau_Original_swap_switch = IGC_summary(str_c(path, 'IGC1_forceTau_Original_swap_switch'), filter='included')

IGC1_Homo_unswap_unswitch = IGC_summary(str_c(path, 'IGC1_Homo_unswap_unswitch'), filter='included')
IGC1_forceTau_Homo_unswap_unswitch = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_unswap_unswitch'), filter='included')
IGC1_Original_unswap_unswitch = IGC_summary(str_c(path, 'IGC1_Original_unswap_unswitch'), filter='included')
IGC1_forceTau_Original_unswap_unswitch = IGC_summary(str_c(path, 'IGC1_forceTau_Original_unswap_unswitch'), filter='included')

### new model IGC2
IGC2_Homo = IGC_summary(str_c(path, 'IGC2_Homo'), filter='included', IGC1 = F, Original_model = F)
IGC2_forceTau_Homo = IGC_summary(str_c(path, 'IGC2_forceTau_Homo'), filter='included', IGC1 = F, Original_model = F)
IGC2_Original = IGC_summary(str_c(path, 'IGC2_Original'), filter='included', IGC1 = F)
IGC2_forceTau_Original = IGC_summary(str_c(path, 'IGC2_forceTau_Original'), filter='included', IGC1 = F)

# swap test
IGC2_Homo_swap = IGC_summary(str_c(path, 'IGC2_Homo_swap'), filter='included', IGC1 = F)
IGC2_forceTau_Homo_swap = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_swap'), filter='included', IGC1 = F)
IGC2_Original_swap = IGC_summary(str_c(path, 'IGC2_Original_swap'), filter='included', IGC1 = F)
IGC2_forceTau_Original_swap = IGC_summary(str_c(path, 'IGC2_forceTau_Original_swap'), filter='included', IGC1 = F)

IGC2_Homo_switch = IGC_summary(str_c(path, 'IGC2_Homo_switch'), filter='included', IGC1 = F)
IGC2_forceTau_Homo_switch = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_switch'), filter='included', IGC1 = F)
IGC2_Original_switch = IGC_summary(str_c(path, 'IGC2_Original_switch'), filter='included', IGC1 = F)
IGC2_forceTau_Original_switch = IGC_summary(str_c(path, 'IGC2_forceTau_Original_switch'), filter='included', IGC1 = F)

IGC2_Homo_swap_switch = IGC_summary(str_c(path, 'IGC2_Homo_swap_switch'), filter='included', IGC1 = F)
IGC2_forceTau_Homo_swap_switch = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_swap_switch'), filter='included', IGC1 = F)
IGC2_Original_swap_switch = IGC_summary(str_c(path, 'IGC2_Original_swap_switch'), filter='included', IGC1 = F)
IGC2_forceTau_Original_swap_switch = IGC_summary(str_c(path, 'IGC2_forceTau_Original_swap_switch'), filter='included', IGC1 = F)

IGC2_Homo_unswap_unswitch = IGC_summary(str_c(path, 'IGC2_Homo_unswap_unswitch'), filter='included', IGC1 = F)
IGC2_forceTau_Homo_unswap_unswitch = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_unswap_unswitch'), filter='included', IGC1 = F)
IGC2_Original_unswap_unswitch = IGC_summary(str_c(path, 'IGC2_Original_unswap_unswitch'), filter='included', IGC1 = F)
IGC2_forceTau_Original_unswap_unswitch = IGC_summary(str_c(path, 'IGC2_forceTau_Original_unswap_unswitch'), filter='included', IGC1 = F)

###### excluded dataset
##### Homo model
path = './input_files/fish/Single_Analysis/'
IGC1_Homo_failed = IGC_summary(str_c(path, 'IGC1_Homo'), filter='excluded')
IGC1_forceTau_Homo_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Homo'), filter='excluded')
IGC1_Original_failed = IGC_summary(str_c(path, 'IGC1_Original'), filter='excluded')
IGC1_forceTau_Original_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Original'), filter='excluded')

## swap test
IGC1_Homo_swap_failed = IGC_summary(str_c(path, 'IGC1_Homo_swap'), filter='excluded')
IGC1_forceTau_Homo_swap_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_swap'), filter='excluded')
IGC1_Original_swap_failed = IGC_summary(str_c(path, 'IGC1_Original_swap'), filter='excluded')
IGC1_forceTau_Original_swap_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Original_swap'), filter='excluded')

IGC1_Homo_switch_failed = IGC_summary(str_c(path, 'IGC1_Homo_switch'), filter='excluded')
IGC1_forceTau_Homo_switch_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_switch'), filter='excluded')
IGC1_Original_switch_failed = IGC_summary(str_c(path, 'IGC1_Original_switch'), filter='excluded')
IGC1_forceTau_Original_switch_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Original_switch'), filter='excluded')

IGC1_Homo_swap_switch_failed = IGC_summary(str_c(path, 'IGC1_Homo_swap_switch'), filter='excluded')
IGC1_forceTau_Homo_swap_switch_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_swap_switch'), filter='excluded')
IGC1_Original_swap_switch_failed = IGC_summary(str_c(path, 'IGC1_Original_swap_switch'), filter='excluded')
IGC1_forceTau_Original_swap_switch_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Original_swap_switch'), filter='excluded')

IGC1_Homo_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC1_Homo_unswap_unswitch'), filter='excluded')
IGC1_forceTau_Homo_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_unswap_unswitch'), filter='excluded')
IGC1_Original_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC1_Original_unswap_unswitch'), filter='excluded')
IGC1_forceTau_Original_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC1_forceTau_Original_unswap_unswitch'), filter='excluded')

### new model IGC2
IGC2_Homo_failed = IGC_summary(str_c(path, 'IGC2_Homo'), filter='excluded', IGC1 = F, Original_model = F)
IGC2_forceTau_Homo_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Homo'), filter='excluded', IGC1 = F, Original_model = F)
IGC2_Original_failed = IGC_summary(str_c(path, 'IGC2_Original'), filter='excluded', IGC1 = F)
IGC2_forceTau_Original_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Original'), filter='excluded', IGC1 = F)

# swap test
IGC2_Homo_swap_failed = IGC_summary(str_c(path, 'IGC2_Homo_swap'), filter='excluded', IGC1 = F)
IGC2_forceTau_Homo_swap_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_swap'), filter='excluded', IGC1 = F)
IGC2_Original_swap_failed = IGC_summary(str_c(path, 'IGC2_Original_swap'), filter='excluded', IGC1 = F)
IGC2_forceTau_Original_swap_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Original_swap'), filter='excluded', IGC1 = F)

IGC2_Homo_switch_failed = IGC_summary(str_c(path, 'IGC2_Homo_switch'), filter='excluded', IGC1 = F)
IGC2_forceTau_Homo_switch_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_switch'), filter='excluded', IGC1 = F)
IGC2_Original_switch_failed = IGC_summary(str_c(path, 'IGC2_Original_switch'), filter='excluded', IGC1 = F)
IGC2_forceTau_Original_switch_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Original_switch'), filter='excluded', IGC1 = F)

IGC2_Homo_swap_switch_failed = IGC_summary(str_c(path, 'IGC2_Homo_swap_switch'), filter='excluded', IGC1 = F)
IGC2_forceTau_Homo_swap_switch_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_swap_switch'), filter='excluded', IGC1 = F)
IGC2_Original_swap_switch_failed = IGC_summary(str_c(path, 'IGC2_Original_swap_switch'), filter='excluded', IGC1 = F)
IGC2_forceTau_Original_swap_switch_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Original_swap_switch'), filter='excluded', IGC1 = F)

IGC2_Homo_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC2_Homo_unswap_unswitch'), filter='excluded', IGC1 = F)
IGC2_forceTau_Homo_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_unswap_unswitch'), filter='excluded', IGC1 = F)
IGC2_Original_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC2_Original_unswap_unswitch'), filter='excluded', IGC1 = F)
IGC2_forceTau_Original_unswap_unswitch_failed = IGC_summary(str_c(path, 'IGC2_forceTau_Original_unswap_unswitch'), filter='excluded', IGC1 = F)


# add yeast data
path = 'input_files/yeast/Single_Analysis/'
yeast_Original = IGC_summary(str_c(path, 'yeast_Original'))
yeast_Homo = IGC_summary(str_c(path, 'yeast_Homo'))
yeast_forceTau_Original = IGC_summary(str_c(path, 'yeast_forceTau_Original'))
yeast_forceTau_Homo = IGC_summary(str_c(path, 'yeast_forceTau_Homo'))

# swap test
yeast_Homo_swap = IGC_summary(str_c(path, 'yeast_Homo_swap'))
yeast_forceTau_Homo_swap = IGC_summary(str_c(path, 'yeast_forceTau_Homo_swap'))
yeast_Original_swap = IGC_summary(str_c(path, 'yeast_Original_swap'))
yeast_forceTau_Original_swap = IGC_summary(str_c(path, 'yeast_forceTau_Original_swap'))

yeast_Homo_switch = IGC_summary(str_c(path, 'yeast_Homo_switch'))
yeast_forceTau_Homo_switch = IGC_summary(str_c(path, 'yeast_forceTau_Homo_switch'))
yeast_Original_switch = IGC_summary(str_c(path, 'yeast_Original_switch'))
yeast_forceTau_Original_switch = IGC_summary(str_c(path, 'yeast_forceTau_Original_switch'))

yeast_Homo_swap_switch = IGC_summary(str_c(path, 'yeast_Homo_swap_switch'))
yeast_forceTau_Homo_swap_switch = IGC_summary(str_c(path, 'yeast_forceTau_Homo_swap_switch'))
yeast_Original_swap_switch = IGC_summary(str_c(path, 'yeast_Original_swap_switch'))
yeast_forceTau_Original_swap_switch = IGC_summary(str_c(path, 'yeast_forceTau_Original_swap_switch'))

yeast_Homo_unswap_unswitch = IGC_summary(str_c(path, 'yeast_Homo_unswap_unswitch'))
yeast_forceTau_Homo_unswap_unswitch = IGC_summary(str_c(path, 'yeast_forceTau_Homo_unswap_unswitch'))
yeast_Original_unswap_unswitch = IGC_summary(str_c(path, 'yeast_Original_unswap_unswitch'))
yeast_forceTau_Original_unswap_unswitch = IGC_summary(str_c(path, 'yeast_forceTau_Original_unswap_unswitch'))

rm(path, IGC_summary, igc.proportion, joint_summary, IGC1_filter, IGC2_filter, `%ni%`)
save.image(file = "./Rdata/Fish&yeast.Rdata")



# ## joint analysis
# path = './input_files/CenterDiff/JointAnalysis/'
# Joint_2omega_igcOmega = joint_summary(str_c(path, 'Joint_2omega_newModel'))
# Joint_igcOmega_igcOmega = joint_summary(str_c(path, 'Joint_igcOmega_newModel'))
# Joint_omega = joint_summary(str_c(path, 'Joint_omega'))
# Joint_omega_igcOmega = joint_summary(str_c(path, 'Joint_omega_newModel'))
# 
# Joint_tau = joint_summary(str_c(path, 'Joint_tau'))
# Joint_tau_igcOmega = joint_summary(str_c(path, 'Joint_tau_igcOmega08'))
# Joint_tau_and_igcOmega = joint_summary(str_c(path, 'Joint_tau+igcOmega08'))
# 
# Joint_all_igcOmega = joint_summary(str_c(path, 'Joint_all'))
# Joint_all_free56_igcOmega = joint_summary(str_c(path, 'Joint_all_free_2omega'))
# Joint_all_free6_igcOmega = joint_summary(str_c(path, 'Joint_all_free_igcOmega'))
# Joint_all_free5_igcOmega = joint_summary(str_c(path, 'Joint_all_free_omega'))
# Joint_all_free7_igcOmega = joint_summary(str_c(path, 'joint_all_free_tau'))
# 
# path = './input_files/HomoModel/JointAnalysis_HomoOmega/'
# Joint_all_homoOmega = joint_summary(str_c(path, 'Joint_all'))
# Joint_all_free6_homoOmega = joint_summary(str_c(path, 'Joint_all_free_homoOmega'))
# Joint_all_free5_homoOmega = joint_summary(str_c(path, 'Joint_all_free_omega'))
# Joint_all_free56_homoOmega = joint_summary(str_c(path, 'Joint_all_free_omega&homo_omega'))
# #Joint_all_free7_homoOmega = joint_summary(str_c(path, 'Joint_all_free_tau'))
# Joint_homoOmega = joint_summary(str_c(path, 'Joint_HomoOmega'))
# Joint_omega = joint_summary(str_c(path, 'Joint_omega'))
# Joint_omega_homoOmega = joint_summary(str_c(path, 'Joint_omega_newModel'))
# Joint_56_homoOmega = joint_summary(str_c(path, 'Joint_omega&homo_omega'))
# Joint_tau_homoOmega = joint_summary(str_c(path, 'Joint_tau_homoOmega'))
# Joint_67_homoOmega = joint_summary(str_c(path, 'Joint_tau&homo_omega'))





