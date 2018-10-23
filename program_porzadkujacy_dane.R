library(shiny)
library(graphics)
library(ggplot2)
library(maps)
library(mapproj)
library(usmap)

#https://www.freedominthe50states.org/data - dane sluzace do analizy 

d2000<-read.csv2("C:/Users/belog/OneDrive/Pulpit/praca mgr/Dane/d2000.csv",header = TRUE)
d2006<-read.csv2("C:/Users/belog/OneDrive/Pulpit/praca mgr/Dane/d2006.csv",header = TRUE)
d2008<-read.csv2("C:/Users/belog/OneDrive/Pulpit/praca mgr/Dane/d2008.csv",header = TRUE)
d2010<-read.csv2("C:/Users/belog/OneDrive/Pulpit/praca mgr/Dane/d2010.csv",header = TRUE)
d2012<-read.csv2("C:/Users/belog/OneDrive/Pulpit/praca mgr/Dane/d2012.csv",header = TRUE)
d2014<-read.csv2("C:/Users/belog/OneDrive/Pulpit/praca mgr/Dane/d2014.csv",header = TRUE)

#Dane zosta³y spakowane do archiwum o nazwie Dane.rar