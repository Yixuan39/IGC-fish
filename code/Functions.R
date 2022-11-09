library(tidyverse)
load('Rdata/failed_data.Rdata')

joint_summary = function(file){
  x = list.files(str_c(file, "/summary"))
  file = str_c(file, "/summary/", x)
  table = read.csv(file = file, sep = " ", skip = 1, header = F, nrow=nrow(read.table(file = file, header = F)))
  header = read.csv(file = file, sep = " ", header = F, nrows = 1)
  header = header[-1]
  rowNames = read.csv(file = file, sep = " ", header = F, skip = nrow(read.table(file = file, header = F)) - 1)[3,]
  rowNames = rowNames[-1]
  header = t(data.frame(str_split(header,"_")))[,2] %>% as.vector()
  header = str_c("Pillar", header)
  colnames(table) <- header
  rownames(table) <- rowNames
  table = as.data.frame(t(table))
  table[,2] = -table[,2] # convert to negative log-likelihood
  return(table)
}

`%ni%` <- Negate(`%in%`)

IGC_summary = function(directory, IGC1=T, Original_model=T, current = F, filter = NULL){
  cases = str_sort(list.files(directory), numeric = TRUE)
  if (IGC1==T){
    output = c()
    for(case in cases){
      folder = str_c(directory, "/", case, "/summary")
      files = list.files(folder)
      file = str_subset(files, "summary")
      if(length(files) > 0){
        matrix = read.csv(file = str_c(folder, "/", file), header = FALSE, sep = " ")
        num = matrix[1:((dim(matrix)[1]+1)/2-1),] %>% as.numeric()
        name = matrix[((dim(matrix)[1]+1)/2+1):dim(matrix)[1],]
        output = append(output,num)
      }else{
        if(file.exists(str_c(directory, '/', case, '/save/record.txt'))){
          data = read.csv(str_c(directory, '/', case, '/save/record.txt'), header = F)
          output = append(output, data[dim(data)[1],])
          print(str_c(case, 'use record'))
        }else{
          data = rep(NA, length(num))
          output = append(output, data)
          #print(str_c(case, 'missing'))
        }
      }
    }
    output = matrix(output, ncol = length(cases))
    rownames(output) = name
    colnames(output) = cases
    output = t(output) %>% as.data.frame()
    # exclude 6 data
    if(is.null(filter) == F){
      if(filter == 'included'){
        output = output %>% filter(row.names(output) %ni% IGC1_filter)
      }
      if(filter == 'excluded'){
        output = output %>% filter(row.names(output) %in% IGC1_filter)
      }
    }
    
    
  } else {
    output = data.frame()
    for(case in cases){
      folder = str_c(directory, "/", case, "/summary")
      files = list.files(folder)
      file = str_subset(files, "summary")
      if(length(file) != 0){
        matrix = read.csv(file = str_c(folder, "/", file), header = FALSE, sep = " ")
        num = matrix[1:((dim(matrix)[1]+1)/2-1),] %>% as.numeric() %>% as.matrix()
        name = matrix[((dim(matrix)[1]+1)/2+1):dim(matrix)[1],]
        num = rbind(case, num)
        rownames(num) = c('case',name)
        if(case == cases[1]){
          output = t(num)
        }else{
          output = merge(output,t(num), all = TRUE, sort = FALSE)
        }
      } else {
        missing_data = matrix(NA, dim(output)[2], 1)
        missing_data[1,] = case
        rownames(missing_data) = c('case',name)
        output = merge(output, t(missing_data), all = TRUE, sort = FALSE)
      }
    }
    output = data.frame(output, row.names = 1)
    
    ### get confidence table
    confidence_table = read.csv(file = './input_files/TGD_bestorthos.txt', header = 1, sep = '\t')
    confidence_table_95 = filter(confidence_table, BESTPROB >= 0.95 & gasterosteus_aculeatus1 != 'None' )
    name_95per = str_c("Pillar",confidence_table_95[,1],"R")
    IGC2_95 = intersect(name_95per, rownames(output))

    output = output[IGC2_95,]
    
    if(is.null(filter) == F){
      if(filter == 'included'){
        output = output %>% filter(row.names(output) %ni% IGC2_filter)
      }
      if(filter == 'excluded'){
        output = output %>% filter(row.names(output) %in% IGC2_filter)
      }
    }
    
  }
  #output = filter(output, rowSums(is.na(output[,1:2]))==0)
  rname = rownames(output)
  output = sapply(output, as.numeric) %>% as.data.frame()
  rownames(output) = rname
  if(sum(which(is.na(output)))){
    print(rownames(output[is.na(output$ll),]))
  }
  return(output)
}

# Calculate proportion
igc.proportion <- function(dataset){
  out = c()
  namelist <- colnames(dataset)
  one2two <- c()
  two2one <- c()
  mut <- c()
  for(i in namelist){
    if(str_detect(i,"1->2")){
      if (str_detect(i,"N0")==FALSE){
        one2two <- append(one2two,i)
      }
    }
    
    if(str_detect(i,"2->1")){
      if (str_detect(i,"N0")==FALSE){
        two2one <- append(two2one,i)
      }
    }
    
    if(str_detect(i,"mut")){
      if (str_detect(i,"N0")==FALSE){
        mut <- append(mut,i)
      }
    }
  }
  for(j in 1:dim(dataset)[1]){
    one2twoSum <- sum(dataset[j, one2two])
    two2oneSum <- sum(dataset[j, two2one])
    mutSum <- sum(dataset[j, mut])
    num <- sum(one2twoSum, two2oneSum)
    den <- sum(num, mutSum)
    p = num/den
    out = rbind(out,c(rownames(dataset)[j], p))
  }
  out = data.frame(out)
  names(out) = c("names","proportion")
  out[,2] = as.numeric(out[,2])
  out = data.frame(out, row.names = 1)
  return(out)
}

