# Load required libraries
  library("ICS")
  library("tsne")
  library("RDRToolbox")
#  library("REPPlab")
  library("lle")
  library("kernlab")
  library("destiny")  
  
x <- matrix(runif(100000),ncol=100)
colnames(x) <- paste("Sample",1:100)

x.pca <- prcomp(t(x), scale = TRUE, retx = TRUE)$x
col <- c(rep("black",50), rep("red",50))

# ICS
  FOBI <- ics(x.pca[,1:5])
  plot(FOBI, col=col, index=c(1:5),pch=20)
  
# t-SNE
  TSNEout <- tsne(x.pca[,1:5], k=5)
  pairs(TSNEout, pch=20, col=col)

# Isomap
  ISOout <- Isomap(x.pca[,1:5], dim=5)
  pairs(ISOout, col=col, pch=20)
  
# Kernel PCA
  KPCAres <- kpca(x.pca[,1:5])
  pairs(rotated(KPCAres)[,1:5], col=col, pch=20 )
  
# Diffusion map
  dm <- DiffusionMap(x.pca[,1:5])
  pairs(dm@eigenvectors[,1:5], col=col, pch=20 )
  
# LLE
  lleres <- lle(x.pca[,1:5], m=7, k=17, v=0.99)
  pairs(lleres$Y[,1:5], col=col, pch=20 )

# REPPlab
#  REPPres <- EPPlab(x.pca[,1:5], PPalg = "Tribe", PPindex = "KurtosisMin", n.simu = 100, maxiter = 200, sphere = TRUE)
#  plot(REPPres, type = "angles", which = 1:100)
#  pairs(REPPres, which = c(60, 80,100))
  