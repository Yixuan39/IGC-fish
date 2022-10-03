rm(list = ls())
source('./code/Functions.R')

##### Homo model
path = './input_files/fish/Single_Analysis/'
IGC1_Homo = IGC_summary(str_c(path, 'IGC1_Homo'))
IGC1_forceTau_Homo = IGC_summary(str_c(path, 'IGC1_forceTau_Homo'))
IGC1_Original = IGC_summary(str_c(path, 'IGC1_Original'))
IGC1_forceTau_Original = IGC_summary(str_c(path, 'IGC1_forceTau_Original'))

## swap test
IGC1_Homo_swap = IGC_summary(str_c(path, 'IGC1_Homo_swap'))
IGC1_forceTau_Homo_swap = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_swap'))
IGC1_Original_swap = IGC_summary(str_c(path, 'IGC1_Original_swap'))
IGC1_forceTau_Original_swap = IGC_summary(str_c(path, 'IGC1_forceTau_Original_swap'))

IGC1_Homo_unswap = IGC_summary(str_c(path, 'IGC1_Homo_unswap'))
IGC1_forceTau_Homo_unswap = IGC_summary(str_c(path, 'IGC1_forceTau_Homo_unswap'))
IGC1_Original_unswap = IGC_summary(str_c(path, 'IGC1_Original_unswap'))
IGC1_forceTau_Original_unswap = IGC_summary(str_c(path, 'IGC1_forceTau_Original_unswap'))

### new model IGC2
IGC2_Homo = IGC_summary(str_c(path, 'IGC2_Homo'), IGC1 = F, Original_model = F)
IGC2_forceTau_Homo = IGC_summary(str_c(path, 'IGC2_forceTau_Homo'), IGC1 = F, Original_model = F)
IGC2_Original = IGC_summary(str_c(path, 'IGC2_Original'), IGC1 = F)
IGC2_forceTau_Original = IGC_summary(str_c(path, 'IGC2_forceTau_Original'), IGC1 = F)

# swap test (no need to specify IGC1=F)
IGC2_Homo_swap = IGC_summary(str_c(path, 'IGC2_Homo_swap'))
IGC2_forceTau_Homo_swap = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_swap'))
IGC2_Original_swap = IGC_summary(str_c(path, 'IGC2_Original_swap'))
IGC2_forceTau_Original_swap = IGC_summary(str_c(path, 'IGC2_forceTau_Original_swap'))

IGC2_Homo_unswap = IGC_summary(str_c(path, 'IGC2_Homo_unswap'))
IGC2_forceTau_Homo_unswap = IGC_summary(str_c(path, 'IGC2_forceTau_Homo_unswap'))
IGC2_Original_unswap = IGC_summary(str_c(path, 'IGC2_Original_unswap'))
IGC2_forceTau_Original_unswap = IGC_summary(str_c(path, 'IGC2_forceTau_Original_unswap'))

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

# add yeast data
path = 'input_files/yeast/'
yeast_Original = IGC_summary(str_c(path, 'yeast_Original'))
yeast_Homo = IGC_summary(str_c(path, 'yeast_Homo'))
yeast_forceTau_Original = IGC_summary(str_c(path, 'yeast_forceTau_Original'))
yeast_forceTau_Homo = IGC_summary(str_c(path, 'yeast_forceTau_Homo'))

# swap test
yeast_Original_swap = IGC_summary(str_c(path, 'yeast_Original_swap'))
yeast_Homo_swap = IGC_summary(str_c(path, 'yeast_Homo_swap'))
yeast_Original_unswap = IGC_summary(str_c(path, 'yeast_Original_unswap'))
yeast_Homo_unswap = IGC_summary(str_c(path, 'yeast_Homo_unswap'))
yeast_forceTau_Original_swap = IGC_summary(str_c(path, 'yeast_forceTau_Original_swap'))
yeast_forceTau_Homo_swap = IGC_summary(str_c(path, 'yeast_forceTau_Homo_swap'))
yeast_forceTau_Original_unswap = IGC_summary(str_c(path, 'yeast_forceTau_Original_unswap'))
yeast_forceTau_Homo_unswap = IGC_summary(str_c(path, 'yeast_forceTau_Homo_unswap'))

rm(path, IGC_summary, igc.proportion, joint_summary)
save.image(file = "./Rdata/Fish&yeast.Rdata")









