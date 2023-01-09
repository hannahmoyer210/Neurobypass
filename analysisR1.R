library(readr)
library(ggplot2)
library(meta)
library(forestplot)
library(stringr)
library(readxl)
library(tidyverse)
library(rstatix)

##-----------------------------------------------------------------------------
##  PFS HR: contrast between trials with vs w/o prior positive phase II evidence
##-----------------------------------------------------------------------------
## missedastep <- read_excel("/Users/hannahmoyer/Desktop/masterfeb7.xlsx")
setwd("/Users/hannahmoyer/Desktop/")

termination <- read_excel("pilotterm.xlsx")
positivity <-read_excel("pilotpos.xlsx")
fisher.test(table(termination$`P2 Bypass​`, termination$`P2 not Bypass​`))
fisher.test(table(positivity$`P2 Bypass​`, positivity$`P2 not Bypass​`))
fisher.test(positivity)
 
