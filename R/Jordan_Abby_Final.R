library(kableExtra)
library(FinalProject)
library(magrittr)
library(ggplot2)

myttest = function(x, y, alpha){
  Rttest2 <- t.test(x, y, mu = 0, var.equal = TRUE, conf.level = 1-alpha) #Paired
  Rttest3 <- t.test(x, y, mu = 0, var.equal = FALSE, conf.level = 1-alpha) #Ttest
  Rttest4 <- t.test(x, y, mu = 0, conf.level = 1-alpha ) #welch
  obj <- list(data = data.frame(x=x, y=y), Confidence_Interval = Rttest2$conf.int, P.value = Rttest2$p.value, Alpha = alpha)
  obj2 <- list(data = data.frame(x=x, y=y), Confidence_Interval = Rttest4$conf.int, P.value = Rttest4$p.value, Alpha = alpha)
  class(obj) <- 'Rttest'
  class(obj2) <- 'Welch'
  obj
  obj2
}


print.Rttest <- function(x,...) {
  obj$data %>%
  #Rttest$data = x[["data"]][["x"]], x[["data"]][["y"]]
  #Rttest$Alpha = alpha[["Alpha"]]
  #dataframe = data.frame(Rttest$data, Rttest$Alpha)

  #kable(dataframe)
    kableExtra::kable(col.names = names(obj$data), caption = "Data from t-test") %>%
    kableExtra::kable_minimal(full_width = F)
    #kable_styling(kableExtra::kable(data,align = "c", col.names = NULL))

}

#Plot function
plot.Rttest = function(x, y, xlabel ="", ylabel=""){
  data = c(obj$data,obj$Confidence_Interval,obj$P.value,obj$Alpha)
  plot(x[["data"]][["x"]], y[["data"]][["y"]], xlabel = 'x', ylabel = 'y', main = "")
  #plot(obj$data)
  quartz; boxplot(x,y)

}

Cat <- rep(c("A", "B"), c(30,30))
data.frame(MeanValue = c(x,y), TheData = Cat) -> data
TheData <- ggplot(data) + geom_boxplot(aes(x = TheData, y = MeanValue, fill = TheData))
print(TheData)
#data
alpha <- 0.05


set.seed(32); x=rnorm(30,mean=10,sd=15)
set.seed(35); y=rnorm(30,mean=8,sd=15)
ans1<-myttest(x,y,alpha=0.05)
print(ans1)
plot(ans1)
class(ans1)

set.seed(32); x=rnorm(30,mean=10,sd=5)
set.seed(35); y=rnorm(30,mean=8,sd=15)
ans2<-myttest(x,y,alpha=0.05)
print(ans2)
plot(ans2)
class(ans2)

set.seed(32); x=rnorm(30,mean=10,sd=15)
set.seed(35); y = x+ rnorm(30, 5 ,4)
ans3<-myttest(x,y,alpha=0.05)
print(ans3)
class(ans3)
plot(ans3)


