#### R Code for Scatter plots ####
### July 31, 2016 ####

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Project1/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

cor(Age,Height)

plot(Age, Height)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height")
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25))
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25),cex = 0.5)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25),cex = 0.5,pch = 8)
plot(Age, Height,main="Scatterplot", xlab = "Age", ylab = "Height",las = 1,xlim = c(0,25),cex = 0.5,pch = 8,col = 2)

abline(lm(Height ~Age))
abline(lm(Height ~Age),col = 4)

lines(smooth.spline(Age,Height))
lines(smooth.spline(Age,Height),lty=2,lwd=5)


plot(Age, Height, main = "Scatterplot")
plot(Age, Height, main = "Scatterplot",cex = 0.5)
plot(Age, Height, main = "Scatterplot",cex = 0.5,cex.main = 2)
plot(Age, Height, main = "Scatterplot",cex = 0.5,cex.main = 2,cex.lab = 1.5)
plot(Age, Height, main = "Scatterplot",cex = 0.5,cex.main = 2,cex.lab = 1.5,cex.axis = 0.7)
plot(Age, Height, main = "Scatterplot")
plot(Age, Height, main = "Scatterplot",font.main=3)
plot(Age, Height, main = "Scatterplot",font.main=4)
plot(Age, Height, main = "Scatterplot",font.main=4,font.lab = 2)
plot(Age, Height, main = "Scatterplot",font.main=4,font.lab = 2,font.axis=3)
plot(Age, Height, main = "Scatterplot")
plot(Age, Height, main = "Scatterplot",col=5)
plot(Age, Height, main = "Scatterplot",col=5,col.main=4)
plot(Age, Height, main = "Scatterplot",col=5,col.main=4,col.lab=2)
plot(Age, Height, main = "Scatterplot",col=5,col.main=4,col.lab=2,col.axis=3)
plot(Age, Height, main = "Scatterplot")
plot(Age, Height, main = "Scatterplot",pch=2)
plot(Age, Height, main = "Scatterplot",pch="w")
 
abline(lm(Height~Age))
abline(lm(Height~Age),col=4,lty=2,lwd=6)

plot(Age[Gender == "male"],Height[Gender == "male"],col=4,pch="m")
plot(Age[Gender == "male"],Height[Gender == "male"],col=4,pch="m",xlab = "Age",ylab = "Height",main = "Height vs Age")
points(Age[Gender == "female"],Height[Gender=="female"],col=6,pch="f")

par(mfrow=c(1,2))
plot(Age[Gender == "male"],Height[Gender=="male"],xlab = "Age",ylab = "Height",main = "Height vs Age for Males")
par(mfrow=c(1,2))
plot(Age[Gender == "male"],Height[Gender=="male"],xlab = "Age",ylab = "Height",main = "Height vs Age for Males",xlim = c(0,20),ylim=c(45,85))
plot(Age[Gender == "female"],Height[Gender=="female"],xlab = "Age",ylab = "Height",main = "Height vs Age for Females",xlim = c(0,20),ylim=c(45,85))

par(mfrow = c(1,1))
plot(Age,Height,main="TITLE")
plot(Age,Height,main="TITLE", axes=F)
axis(side=1,at=c(7,12.3,15),labels=c("sev","mean", "15"))
axis(side=2,at=c(55,65,75),labels=c(55,65,75))
box()
axis(side=4,at=c(50,60,70),labels=c(40,60,70))

# adding text
plot(Age,LungCap,main="Scatterplot of LungCap vs Age", las=1)
cor(Age,LungCap)
text(x=5,y=11,label="r = .82")
text(x=5,y=11,label="r = .82",adj=0)
text(x=5,y=11,label="r = .82",adj=1)
plot(Age,LungCap,main="Scatterplot of LungCap vs Age", las=1)
text(x=3.5,y=13,label="r = .82",adj=0,cex=0.5,col=4)
plot(Age,LungCap,main="Scatterplot of LungCap vs Age", las=1)
text(x=3.5,y=13,label="r = .82",adj=0,cex=1,col=4,font=4)

# adding text in the margin
abline(h=mean(LungCap),col=2)
abline(h=mean(LungCap),col=2,lwd=2)
text(x=2.5,y=8.5,adj=0,label="Mean Lung Cap",cex=0.65,col=2)
plot(Age,LungCap,main="Scatterplot of LungCap vs Age", las=1)
mtext(text="r = 0.82",side=1)
mtext(text="r = 0.82",side=2)
mtext(text="r = 0.82",side=3)
mtext(text="r = 0.82",side=4)
mtext(text="r = 0.82",side=1,adj=1)
mtext(text="r = 0.82",side=1,adj=0)
mtext(text="r = 0.82",side=1,adj=0.75)
plot(Age,LungCap,main="Scatterplot of LungCap vs Age", las=1)
mtext(text="r = 0.82",side=3,adj=1,col=4,cex=1.25,font=4)


# Legend
plot(Age[Smoke == "no"],LungCap[Smoke == "no"], main = "LungCap vs Age for Smoke/Non-Smoke", col = 4, xlab = "Age",ylab= "LungCap")
points(Age[Smoke == "yes"],LungCap[Smoke=="yes"],col=2)
legend(x=3.5,y=14,legend=c("Non-Smoke", "Smoke"),fill=c(4,2))
plot(Age[Smoke == "no"],LungCap[Smoke == "no"], main = "LungCap vs Age for Smoke/Non-Smoke", col = 4, xlab = "Age",ylab= "LungCap",pch=16)
points(Age[Smoke == "yes"],LungCap[Smoke=="yes"],col=2,pch=17)
legend(x=3.5,y=14,legend=c("Non-Smoke", "Smoke"),col=c(4,2),pch=c(16,17))
plot(Age[Smoke == "no"],LungCap[Smoke == "no"], main = "LungCap vs Age for Smoke/Non-Smoke", col = 4, xlab = "Age",ylab= "LungCap",pch=16)
points(Age[Smoke == "yes"],LungCap[Smoke=="yes"],col=2,pch=17)
legend(x=3.5,y=14,legend=c("Non-Smoke", "Smoke"),col=c(4,2),pch=c(16,17),bty="n")
plot(Age[Smoke == "no"],LungCap[Smoke == "no"], main = "LungCap vs Age for Smoke/Non-Smoke", col = 4, xlab = "Age",ylab= "LungCap",pch=16)
points(Age[Smoke == "yes"],LungCap[Smoke=="yes"],col=2,pch=17)
lines(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=4,lwd=3)
lines(smooth.spline(Age[Smoke=="yes"],LungCap[Smoke=="yes"]),col=2,lwd=3)
legend(x=3.5,y=14,legend=c("Non-Smoke", "Smoke"),col=c(4,2),lty=1,bty="n")
legend(x=3.5,y=14,legend=c("Non-Smoke", "Smoke"),col=c(4,2),lty=1,bty="n",lwd=3)
plot(Age[Smoke == "no"],LungCap[Smoke == "no"], main = "LungCap vs Age for Smoke/Non-Smoke", col = 4, xlab = "Age",ylab= "LungCap",pch=16)
points(Age[Smoke == "yes"],LungCap[Smoke=="yes"],col=2,pch=17)
lines(smooth.spline(Age[Smoke=="yes"],LungCap[Smoke=="yes"]),col=2,lwd=3,lty=2)
lines(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=2,lwd=3,lty=3)
lines(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=4,lwd=3,lty=3)
legend(x=3.5,y=14,legend=c("Non-Smoke", "Smoke"),col=c(4,2),lty=c(3,2),bty="n",lwd=3)

