#Current directory
getwd()
#-----------------------
#Auto download data and script file from github
#-----------------------
#-------Install download package--------
install.packages("downloader")
library("downlaoder")
#-------Store url and file name-----
data_url<-"https://raw.githubusercontent.com/AI-Biotechnology-Bioinformatics/AI_and_Omics_Research_Internship_2025/refs/heads/main/BMI_data_1.csv"
file_name<-"BMI_Data1.csv"
#-------download file------
downloader::download(url=data_url, destfile=file_name)
#-------Read file--------
df<-read.csv("BMI_Data1.csv")
