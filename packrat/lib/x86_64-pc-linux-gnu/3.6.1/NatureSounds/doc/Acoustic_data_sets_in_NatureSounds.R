## ----catalog LBH, eval = FALSE------------------------------------------------
#  
#  library(warbleR)
#  
#  # create a color palette
#  trc <- function(n) terrain.colors(n = n, alpha = 0.3)
#  
#  # set global options for catalogs
#  warbleR_options(same.time.scale = TRUE, mar = 0.001, res = 100, spec.mar = 1, max.group.cols = 5, ovlp = 95,
#   width = 23, height = 12.5, tag.pal = list(trc), hatching = 0, cex = 1.3, rm.axes = TRUE, path = "~/Dropbox/R_package_testing/NatureSounds/", box = FALSE)
#  
#  # load data
#  data("lbh.est")
#  
#  # plot catalog
#  catalog(X = lbh.est, flim = c(1.5, 10.5), nrow = 10, ncol = 5, group.tag = "lek.song.type", height = 25, cex = 2,
#          title = "Long billed hermits", img.prefix = "lbh.est", wl = 100)
#  

## ----catalog monk parakeets, eval = FALSE-------------------------------------
#  
#  # load data
#  data("monk.parakeet.est")
#  
#  # monk parakeets
#  catalog(X = monk.parakeet.est, flim = c(1, 11), nrow = 7, ncol = 8,  group.tag = "scale",
#          title = "Monk parakeets", img.prefix = "monk.parakeet.est", wl = 300)
#  

## ----catalog thyroptera, eval = FALSE-----------------------------------------
#  
#  # load data
#  data("thyroptera.est")
#  
#  # thyroptera
#  catalog(X = thyroptera.est, flim = c(2, 60), nrow = 5, ncol = 8, group.tag = "group", title = "Spix's disc-winged bats", img.prefix = "thyroptera.est", wl = 300)
#  

## ----lbh wave objects, eval = FALSE-------------------------------------------
#  
#  # load data
#  data("Phae.long1", "Phae.long2", "Phae.long3", "Phae.long4", "Cryp.soui")
#  
#  # spectrogram
#  seewave::spectro(Phae.long1, wl = 100, scale = FALSE, ovlp = 90, grid = FALSE, palette = seewave::reverse.gray.colors.1, collevels = seq(-50, 0, 5))
#  

## ----phae long 2, eval = FALSE------------------------------------------------
#  
#  # spectrogram
#  seewave::spectro(Phae.long2, wl = 100, scale = FALSE, ovlp = 90, grid = FALSE, palette = seewave::reverse.gray.colors.1, collevels = seq(-50, 0, 5))
#  
#  

## ----phae long 3, eval = FALSE------------------------------------------------
#  
#  # spectrogram
#  seewave::spectro(Phae.long3, wl = 100, scale = FALSE, ovlp = 90, grid = FALSE, palette = seewave::reverse.gray.colors.1, collevels = seq(-50, 0, 5))
#  
#  

## ----phae long 4, eval = FALSE------------------------------------------------
#  
#  # spectrogram
#  seewave::spectro(Phae.long4, wl = 100, scale = FALSE, ovlp = 90, grid = FALSE, palette = seewave::reverse.gray.colors.1, collevels = seq(-50, 0, 5))
#  
#  

## ----Cryp soui, eval = FALSE--------------------------------------------------
#  
#  # spectrogram
#  seewave::spectro(Cryp.soui, wl = 1200, scale = FALSE, ovlp = 90, grid = FALSE, palette = seewave::reverse.gray.colors.1, collevels = seq(-35, 0, 2), flim = c(1.4, 2.4))
#  
#  

## ----session info, echo=F-----------------------------------------------------

sessionInfo()


