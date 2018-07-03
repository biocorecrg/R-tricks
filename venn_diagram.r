require(gplots) 
pdf("myvenn.pdf")
venn(list(A=vectorOfElementsA,B=vectorOfElementsB,C=vectorOfElementsC))
dev.off()
