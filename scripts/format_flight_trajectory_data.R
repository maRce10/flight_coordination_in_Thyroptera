# read data
unpaired_csvs <- list.files(path = "./data/raw/tracking", pattern ="unpaired", recursive = TRUE, full.names = TRUE)

unpaired_l <- lapply(unpaired_csvs, function(x) {
  y <- read.csv(x)
  y$video <- basename(x)
  y$group <- gsub("-unpaired-points-xyz.csv|-unpaired-points-xyz.csv", "", y$video)
  y$type <- if (grepl("natural", x)) "natural" else "artificial"
  y <- y[, c("video", "group", "type", names(y)[which(!names(y) %in% c("video", "group", "type"))])]
  
  # keep only those with no missing individuals
  y  <- y[complete.cases(y), ]
  
  return(y)
})

# determine all column names in all selection tables    
cnms <- unique(unlist(lapply(unpaired_l, names)))  

unpaired_l <- lapply(unpaired_l, function(X)
{
  nms <- names(X)
  if (length(nms) != length(cnms))  
    for(i in cnms[!cnms %in% nms]) {
      X <- data.frame(X,  NA, stringsAsFactors = FALSE, check.names = FALSE)
      names(X)[ncol(X)] <- i
    }
  return(X)
})


unpaired_df <- do.call(rbind, unpaired_l)


write.csv(unpaired_df, "./data/raw/flight_trajectories_by_group.csv", row.names = FALSE)
