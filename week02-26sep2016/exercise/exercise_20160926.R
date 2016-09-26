### R code from vignette source './exercise_20160926'

###################################################
### code chunk number 1: exercise_20160926.Rnw:29-31
###################################################
  anno = read.table("SampleAnnotation.txt", as.is=TRUE, sep="\t", quote="",
                    row.names=1, header=TRUE)


###################################################
### code chunk number 2: exercise_20160926.Rnw:35-36
###################################################
  anno


###################################################
### code chunk number 3: exercise_20160926.Rnw:39-41
###################################################
  samples = rownames(anno)
colors = rainbow(nrow(anno))


###################################################
### code chunk number 4: exercise_20160926.Rnw:45-48
###################################################
  isNorm = anno$TissueType == "norm"
isSick = anno$TissueType == "sick"
isAcute = anno$TissueType == "acute"


###################################################
### code chunk number 5: exercise_20160926.Rnw:51-53
###################################################
x = read.table("expressiondata.txt", as.is=TRUE, sep="\t", quote="", row.names=1, header=TRUE, check.names = FALSE)
x = as.matrix(x)


###################################################
### code chunk number 6: exercise_20160926.Rnw:56-57
###################################################
  png(filename="scatter-1-2.png")


###################################################
### code chunk number 7: exercise_20160926.Rnw:59-63
###################################################
plot(x[ , "norm-02"], x[, "norm-05"], log="xy", pch=20)
abline(0, 1, col="blue")
abline(log10(2), 1, col="blue", lty=2);
abline(-log10(2), 1, col="blue", lty=2);


###################################################
### code chunk number 8: exercise_20160926.Rnw:65-66
###################################################
  tmp = dev.off()


###################################################
### code chunk number 9: exercise_20160926.Rnw:82-84
###################################################
corrMatrix = cor(x)
signif(corrMatrix, digits=3)


###################################################
### code chunk number 10: exercise_20160926.Rnw:88-93
###################################################
  par(mar=c(8,8,2,2))
grayScale <- gray((1:256)/256)
image(corrMatrix, col=grayScale,  axes=FALSE)
axis(1, at=seq(from=0, to=1, length.out=length(samples)), labels=samples, las=2)
axis(2, at=seq(from=0, to=1, length.out=length(samples)), labels=samples, las=2)


###################################################
### code chunk number 11: exercise_20160926.Rnw:115-126
###################################################
  x.sd = apply(x, 1, sd, na.rm=TRUE)
ord = order(x.sd, decreasing=TRUE)
highVarGenes = ord[1:500]
par(mfrow=c(1,2));
d = as.dist(1-cor(x));
c=hclust(d, method="ward.D2");
plot(c, hang=-0.1, main="all genes", xlab="")

d = as.dist(1-cor(x[highVarGenes, ]));
c=hclust(d, method="ward.D2");
plot(c, hang=-0.1, main="high variance genes", xlab="")


###################################################
### code chunk number 12: exercise_20160926.Rnw:131-135
###################################################
  sub = x[ , samples != "sick-04"]
d = as.dist(1-cor(sub));
c=hclust(d, method="ward.D2");
plot(c, hang=-0.1, main="all genes", xlab="")


