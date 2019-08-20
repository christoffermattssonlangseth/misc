# installing packages needed for the analysis
# only install if not installed previosuly
install.packages("data.table", repos = "http://cran.us.r-project.org")
install.packages("spatstat", repos = "http://cran.us.r-project.org")
install.packages("entropy", repos = "http://cran.us.r-project.org")
install.packages("RandomFields", repos = "http://cran.us.r-project.org")
install.packages("INLA", repos=c(getOption("repos"), INLA="https://inla.r-inla-download.org/R/stable"), dep=TRUE)
install.packages("INLA", repos = "http://cran.us.r-project.org")
install.packages("fields",  repos = "http://cran.us.r-project.org")
install.packages("sp", repos = "http://cran.us.r-project.org")
install.packages("methods", repos = "http://cran.us.r-project.org")
install.packages("iterators", repos = "http://cran.us.r-project.org")
install.packages("maptools", repos = "http://cran.us.r-project.org")
install.packages("rgeos", repos = "http://cran.us.r-project.org")
install.packages("tcltk", repos = "http://cran.us.r-project.org")
install.packages("raster", repos = "http://cran.us.r-project.org")
install.packages("BWidget", repos = "http://cran.us.r-project.org")
install.packages("lgcp", repos = "http://cran.us.r-project.org")

# import libraries
library(data.table)
library(spatstat)
library(entropy)
library(RandomFields)
library(INLA)
library(fields)
library(sp)
library(methods)
library(iterators)
library(maptools)
library(rgeos)
library(tcltk)
library(lgcp)

# starting out, we need to read in the files
nilsson = read.csv(file = "nilsson_sorted.csv", header = TRUE, sep = ",")
starfish = read.csv(file = "starfish_sorted.csv", header = TRUE, sep = ",")
nilsson_x = nilsson$x_normalized_rounded
nilsson_y = nilsson$y_normalized_rounded
nilsson_matrix = as.matrix(nilsson)
starfish_matrix = as.matrix(starfish)


# correlation analysis
nilssonDataTable = data.table(nilsson)
starfishDataTable = data.table(starfish)
nilssonOccurances = nilssonDataTable[, .(occurances = length(unique(PosX))), by = Gene]
starfishOccurances = starfishDataTable[, .(occurances = length(unique(x_pixel_alignment_norm))), by = Gene]
 
mergedOccurances = merge(nilssonOccurances, starfishOccurances, by = "Gene")
correlation = cor(mergedOccurances$occurances.x, mergedOccurances$occurances.y)
correlation

{plot(mergedOccurances$occurances.x, mergedOccurances$occurances.y, col=mergedOccurances$Gene, xlab = "Nilsson pipeline", ylab = "Starfish pipeline")
  legend("right",legend = mergedOccurances$Gene, col = mergedOccurances$Gene, pch = 1)
  add = "reg.line"
  model = lm(mergedOccurances$occurances.x ~ mergedOccurances$occurances.y, data = mergedOccurances)
  abline(model, col = 'red')
  title(main = "Nilsson vs Starfish Pipeline")}

  summary(model)
coef(model)
  summary(model)



# conversion to point patterns
range(nilsson$PosX) # determining the range to be specified in owin
range(nilsson$PosY)
nilsson_ppp = ppp(nilsson$PosX, nilsson$PosY, owin(xrange=c(756.375, 38484.810), yrange=c(766.00, 52669.82)))

range(starfish$x_pixel_alignment_norm) # determining the range to be specified in owin
range(starfish$y_pixel_alignment_norm)
starfish_ppp = ppp(starfish$x_pixel_alignment_norm, starfish$y_pixel_alignment_norm, owin(xrange=c(159.86, 38987.00), yrange=c(133.81, 53784.00)))

both_ppp = superimpose(nilsson_ppp=nilsson_ppp,starfish_ppp = starfish_ppp)


# splitting the point pattern into composite valyes
nilsson_ppp_split = split.ppp(nilsson_ppp, f=nilsson$Gene) 
starfish_ppp_split = split.ppp(starfish_ppp, f = starfish$Gene)
both_ppp_split = split.ppp(both_ppp, f = nilsson$Gene)
# plotting the point patterns used for comparison
par(mfrow=c(1,2))
plot(nilsson_ppp_split, main = "Nilsson")
plot(starfish_ppp_split, main = "Starfish")


# plotting the densities to visulize the differences
nilsson_density_all = density(nilsson_ppp_split)
starfish_density_all = density(starfish_ppp_split)
par(mfrow=c(1,2))
plot(nilsson_density_all, main = "Nilsson")
plot(starfish_density_all, main = "Starfish")





# spatio statistical comparisons 
#ADARB2
ripleysK_nilsson_ADARB2 = Kest(nilsson_ppp_split$ADARB2, correction = 'none')
ripleysK_starfish_ADARB2 = Kest(starfish_ppp_split$ADARB2, correction = 'none')
plot(ripleysK_nilsson_ADARB2, main = "K function for Nilsson ADARB2")
plot(ripleysK_starfish_ADARB2, main = "K function for Starfish ADARB2")
par(mfrow=c(1,2))

#plot(ripleysK_nilsson_ADARB2, sqrt(iso/pi) ~ r)
#plot(ripleysK_starfish_ADARB2, sqrt(iso/pi) ~ r)
#plot(ripleysK_nilsson_ADARB2, sqrt(./pi) ~ r, ylab="L(r)", main="L function for Nilsson ADARB2")
#summary(ripleysK_nilsson_ADARB2)
#summary(ripleysK_starfish_ADARB2)

#COL22A1
ripleysK_nilsson_COL22A1 = Kest(nilsson_ppp_split$COL22A1, correction = 'none')
ripleysK_starfish_COL22A1 = Kest(starfish_ppp_split$COL22A1, correction = 'none')


#ANKRD34B
ripleysK_nilsson_ANKRD34B = Kest(nilsson_ppp_split$ANKRD34B, correction = 'none')
ripleysK_starfish_ANKRD34B = Kest(starfish_ppp_split$ANKRD34B, correction = 'none')


#NDNF 
ripleysK_nilsson_NDNF = Kest(nilsson_ppp_split$NDNF, correction = 'isotropic')
ripleysK_starfish_NDNF = Kest(starfish_ppp_split$NDNF, correction = 'isotropic')

plot(Lest(nilsson_ppp_split$NDNF))

#plotting 
par(mfrow=c(2,4))
plot(ripleysK_nilsson_ADARB2, main = "K function for Nilsson ADARB2")
lines(ripleysK_starfish_ADARB2)

plot(ripleysK_starfish_ADARB2, main = "K function for Starfish ADARB2")

plot(ripleysK_nilsson_COL22A1, main = "K function for Nilsson COL22A1")
plot(ripleysK_starfish_COL22A1, main = "K function for Starfish COL22A1")
plot(ripleysK_nilsson_ANKRD34B, main = "K function for Nilsson ANKRD34B")
plot(ripleysK_starfish_ANKRD34B, main = "K function for Starfish ANKRD34B")
plot(ripleysK_nilsson_NDNF, main = "K function for Nilsson NDNF")
plot(ripleysK_starfish_NDNF, main = "K function for Starfish NDNF")

summary(ripleysK_nilsson_ADARB2)
summary(ripleysK_starfish_ADARB2)

summary(ripleysK_nilsson_ANKRD34B)
summary(ripleysK_starfish_ANKRD34B)

summary(ripleysK_nilsson_COL22A1)
summary(ripleysK_starfish_COL22A1)

summary(ripleysK_nilsson_NDNF)
summary(ripleysK_starfish_NDNF)



plot(lgcp.estpcf(nilsson_ppp_split$ADARB2))
plot(lgcp.estpcf(starfish_ppp_split$ADARB2))

lgcp_nilsson_COL22A1 = lgcp.estpcf(nilsson_ppp_split$COL22A1, correction = 'isotropic')
lgcp_starfish_COL22A1 = lgcp.estpcf(starfish_ppp_split$COL22A1, correction = 'isotropic')
plot(lgcp_nilsson_COL22A1, main = "Modelling Nilsson COL22A1 as a log gaussian cox process")

plot(lgcp_starfish_COL22A1, main = "Modelling Starfish COL22A1 as a log gaussian cox process")
par(new=TRUE)
plot(lgcp_nilsson_COL22A1, main = "Modelling Nilsson COL22A1 as a log gaussian cox process")


Kcross(nilsson_ppp, nilsson_ppp_split$ADARB2, nilsson_ppp_split$ANK1)
nearest_ADARB2_nilsson = nnwhich(nilsson_ppp_split$ADARB2)
nearest_ADARB2_starfish = nnwhich(starfish_ppp_split$ADARB2)
summary(nearest_ADARB2_nilsson)
summary(nearest_ADARB2_starfish)

nearest_ADARB2_nilsson = nndist(nilsson_ppp_split$ADARB2)
nearest_ADARB2_starfish = nndist(starfish_ppp_split$ADARB2)
summary(nearest_ADARB2_nilsson)
summary(nearest_ADARB2_starfish)

nearest_COL22A1_nilsson = nnwhich(nilsson_ppp_split$COL22A1)
nearest_COL22A1_starfish = nnwhich(starfish_ppp_split$COL22A1)
summary(nearest_COL22A1_nilsson)
summary(nearest_COL22A1_starfish)


data(nilsson_ppp)
d = nndist(nilsson_ppp)
d2 = nndist(nilsson_ppp)
d1to3 = nndist(nilsson_ppp)
x = runif(100)
y = runif(100)
d = nndist (x,y)
plot(nilsson_ppp %mark% nndist(nilsson_ppp), markscale = 1)



# Some random testing
superimposition = superimpose(nilsson_ppp, starfish_ppp)
plot(superimposition)

summary(nilsson_ppp)
miplot(nilsson_ppp_split$ADARB2)

library(spatstat)
baa <- ppp(x = 1, y = 1, window = square(10))
is.multitype(baa)

marks(baa) <- "gaa"
is.multitype(baa)

marks(baa) <- factor("gaa")
is.multitype(baa)
is.multitype(nilsson_ppp)

moo <- ppp(x = c(1,2), y = c(2,1), window = square(5), marks = factor(c("baa", "gaa")))
Kcross(moo)

# trying out some stuff from David bolin 
x.area=22
x.win=owin(c(0, x.area),c(0, x.area))

# gridding the data, this is done to be able to estimate the model, we assume that the number of points in each grid cells in possion distributed 30x30 cells
nrow=30
ncol=nrow
x.grid=quadrats(starfish_ppp_split$ANKRD34B,nrow,ncol)

# count the number of points in each grid cell; response variable
count.grid=quadratcount(starfish_ppp_split$ANKRD34B, tess=x.grid)
plot(count.grid)
Y = as.vector(count.grid) # the number of point in each grid cell

# calculate the area of each grid cell
n = ncol*nrow
cell.area<-x.area^2/n
E<-rep(cell.area, n) # the area of each grid cell, used down below

# specifying the latent field
I = 1:n
formula = Y ~ 1+f(I, model="rw2d", nrow=nrow, ncol=ncol)

# running the model
result=inla(formula,data=data.frame(Y,I),family="poisson",E=E)
summary(result)
f.spat=result$summary.random$I$mean

# plot model, this will plot the posterior mean of the spatial effect
inla.display.matrix(matrix(f.spat, nrow, ncol))

# daniel simpson, fitting the gene spatial pattern on a log gaussian cox process

inla(formula = y~...+f(index, nrow=100, ncol=100), ...)

formula = Y ~ 1
    + f(index, model="rw2d", nrow=nrow, ncol=ncol, ...)
    + f(J, model="iid",hyper=hyper.error)

# Fitting a RW2D
formula = yy ~ alpha + mu +
      f(ii, model = "rw2d", nrow=nrow, ncol=ncol,
      constr=TRUE, bvalue=1) +
      f(jj, copy="ii", fixed=FALSE) -1
model = inla(formula,  family = c("gaussian", "poisson"),
             data = starfish_ppp_split$ANKRD34B, verbose = TRUE)
   
# Fitting a Matérn Field
formula1 = yy ~ alpha + mu +
       f(ii, model = "matern2d", nrow=nrow, ncol=ncol,
         initial = c(3, log(10)),
         fixed=c(FALSE,TRUE),constr=TRUE) +
       f(jj, copy="ii", fixed=FALSE) -1

model1 = inla(formula1, family = c("gaussian", "poisson"),
                data = data, verbose = TRUE)

## monte carlo approach
test = (nilsson_ppp_split$COL22A1 = starfish_ppp_split$COL22A1)
nn.sim = vector()
#P.r = P
for(i in 1:999){
  marks(test) = sample(nilsson_ppp_split$COL22A1$marks)  # Reassign labels at random, point locations don't change, 
    # marks take point pattern dataset (object of class "ppp" or "ppx").
    # sample takes, either a vector of one or more elements from which to choose, or a positive integer.
  nn.sim[i] = mean(nncross(split(test)$A,split(test)$B)$dist)
}

hist(nn.sim,breaks=30)
abline(v=mean(nncross(split(starfish_ppp_split$COL22A1)$nilsson_ppp_split$COL22A1,split(P)$starfish_ppp_split$COL22A1)$dist),col="red")

#HYPERFRAME
# treating the genes from the two pipelines as one unit, that is in a hyperframe
h_nilsson = hyperframe(pointPattern = nilsson_ppp_split) # the downside is that we loose the lables of the genes 
plot(h_nilsson, quote(plot(Kest(pointPattern))), marsize=1)

h_starfish = hyperframe(pointPattern = starfish_ppp_split) # the downside is that we loose the labels of the genes 
plot(h_starfish, quote(plot(Kest(pointPattern))), marsize=1)

# creating a composite hyperframe structure 
# using a combination of rbind and cbind
h_both_ppp = rbind.hyperframe(h_nilsson$pointPattern, h_starfish$pointPattern)
h_both_pipeline = rbind.hyperframe(h_nilsson$pipeline, h_starfish$pipeline)
h_both = cbind.hyperframe(pointPattern = h_both_ppp, pipeline = h_both_pipeline)
plot(h_both)
ksmooth(nilsson_ppp_split, 0.05)

with(h_nilsson, ksmooth(pointPattern, 0.05))
with(h_starfish, ksmooth(pointPattern))


# with can be used to run a computation on each element in a hyperframe
with(h_nilsson, npoints(pointPattern))
with(h_nilsson, summary(nndist(pointPattern)))

# some information about the hyperframes
with(h_starfish, npoints(pointPattern))
with(h_starfish, summary(nndist(pointPattern)))
with(h_nilsson, distmap(pointPattern))

# ripleys K 
K_nilsson <- with(h_nilsson, Kest(pointPattern))
plot(K_nilsson)
summary(K_nilsson)

par(mfrow=c(8,4))
K_nilsson <- with(h_nilsson, plot(envelope(pointPattern,Kest)))
summary(K_nilsson)

K_starfish <- with(h_starfish, Kest(pointPattern))
plot(K_starfish)
summary(K_starfish)

# inhomogenous K 
Kinhom
K_nilsson_inhom <- with(h_nilsson, Kinhom(pointPattern))
plot(K_nilsson_inhom)
summary(K_nilsson_inhom)

# Fitting models of spatial trend using the composite hyperframe
mppm(pointPattern.x ~ pipeline.x, h_both, Poisson())
mppm(pointPattern.x ~ pipeline.x, h_both)

with(h_nilsson, ppm(pointPattern, Poisson))


# the density of the point patterns
dev.new()
plot(with(h_both, density(pointPattern.x)))
