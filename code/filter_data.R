library(tidyverse)

data = IGC2_forceTau_Original
names(data)
n = names(data)
nn = n[!str_detect(n, "syn_dwell|tau|mut|2..1|1..2|2->1|1->2|length|ll|pi_a|pi_c|pi_g|pi_t|kappa|omega|N0")]
m = data[,c(nn)]
m[is.na(m)] = 0
for(i in 1:nrow(m)){
  if(any(m[i,] >= 1.5)){
    print(rownames(data)[i])
  }
}


filter_branch = function(data){
  name_list = c()
  n = names(data)
  nn = n[!str_detect(n, "syn_dwell|tau|mut|2..1|1..2|2->1|1->2|length|ll|pi_a|pi_c|pi_g|pi_t|kappa|omega|N0")]
  m = data[,c(nn)]
  m[is.na(m)] = 0
  for(i in 1:nrow(m)){
    if(any(m[i,] >= 1.5)){
      #print(rownames(data)[i])
      name_list = append(name_list, rownames(data)[i])
    }
  }
  return(name_list)
}
# "Pillar1432R" "Pillar4023R" "Pillar5209R" "Pillar518R"  "Pillar1098R" "Pillar2056R" 
# "Pillar518R" "Pillar1098R" "Pillar2863R" "Pillar4023R" "Pillar5209R" "Pillar4322R"
# "Pillar337"
IGC1_filter = unique(c(filter_branch(IGC1_forceTau_Original),
                       rownames(IGC1_forceTau_Original[which(IGC1_forceTau_Original_unswap_unswitch$ll < IGC1_forceTau_Original_switch$ll),])))
IGC2_filter = unique(c(filter_branch(IGC2_forceTau_Original),
                 rownames(IGC2_forceTau_Original[which(IGC2_forceTau_Original_unswap_unswitch$ll < IGC2_forceTau_Original_switch$ll),])))
save(IGC1_filter, IGC2_filter, file = 'Rdata/failed_data.Rdata')





