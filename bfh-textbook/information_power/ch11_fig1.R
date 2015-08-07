require(ggplot2)
require(shape)
pdf(file = "ch11_fig1.pdf", width = 9, height = 7)
brfFn <- function(p, delta = 5) {
  1 - (delta) /p
}

solowCondition <- function(p, delta = 5){
  (p*(1/(4*delta)))
}

solowInfeas <- function(p, delta = 5){
  (p*(1/(2*delta)))
}

#COL <- c("#1B9E77", "#D95F02", "#7570B3", "#E7298A", "#66A61E", "#E6AB02", "#A6761D", "#666666")
COL <- c("#7fc97f", "#beaed4", "#fdc086", "#ffff99")
par(mar =  c(5, 5, 4, 2))
xlims <- c(0, 20)
ylims <- c(0, 1)


plot(0, 0, xlim = xlims, ylim = ylims, type = "n",
     xlab = expression(paste("Price, ", p)),
     ylab = expression(paste("Quality, ", q)),
     xaxt = "n", yaxt = "n", cex.lab = 2, bty = "n")

npts <- 500 
npts2 <- 501
#Specify the sequences of points for graphing. 
xx1 <- seq(5, xlims[2], length.out = npts)
xx2 <- seq(xlims[1], xlims[2], length.out = npts)
xx3 <- seq(xlims[1], xlims[2], length.out = npts2)
xx4 <- seq(xlims[1], 25, length.out = npts2)

#Draw the lines for the graphs
lines(xx1, brfFn(xx1), col = COL[2], lwd = 4)
lines(xx2, solowCondition(xx2, delta = 5), col = COL[3], lwd = 4)
lines(xx2, solowInfeas(xx2, delta = 5), col = COL[1], lwd = 4, lty = 2)

#Customize ticks and labels for the plot
ticksy <- c(0, 0.5, 1)
ylabels <- c(0, expression(paste(frac(1,2))), 1)
ticksx <- c(0, 5, 10, 20)
xlabels <- c(0, expression(paste(delta)), expression(paste(2*delta)), 20)
axis(1, at = ticksx, pos = 0, labels = xlabels)
axis(2, at = ticksy, pos = 0, labels = ylabels, las = 1)

#Annotation of the three graphs and the NE
text(15, 0.9, expression(paste("Iso-profit: ", frac(q, p) ," = ", frac(1, 4*delta)*p)))
text(4.5, 0.7, expression(paste("Infeasible Iso-profit")))
text(15, 0.6, expression(paste("BRF: q = ", 1 - frac(2*delta, p))))
#text(28, 0.1, expression(paste("Iso-v curve: v = ", v,"*")))
text(9.5, 0.55, expression(paste("NE")))

#Lines for the coordinates of the Nash equilbrium
segments(10, 0, 10, 0.5, lty = 2, col = "darkgray")
segments(0, 0.5, 10, 0.5, lty = 2, col = "darkgray")

#Add a point for the NE
points(10, 0.5, pch = 16, col = "black", cex = 1.5)

#Arrow to Slope of BRF
Arrows(8, 0.15, 6.8, 0.2, col = "black", lty = 1, lwd = 3)
text(8, 0.12, expression(paste("Slope = ", q[p])))

#Arrow to Slope of isoprofit
Arrows(19.5, 0.83, 18.3, 0.88, col = "black", lty = 1, lwd = 3)
text(19, 0.80, expression(paste("Slope = ", frac(q, p))))

dev.off()

