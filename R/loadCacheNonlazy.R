loadCacheNonlazy <- function(x){
  rdataFiles <- list.files("../Ruminomics-ReindeerCowMetagenome/Scripts/CowVsReindeerAnalysis_cache/html/", pattern="*.RData")
  
  for(i in 1:length(rdataFiles)){
    load(file.path(x,rdataFiles[i]), .GlobalEnv)
  }
}