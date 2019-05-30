file=read.csv('BC.csv')
View(file)
#Reasons for Branch Change
library(readxl)
library(ggplot2)
library(plotly)
library(ggthemes)
#Reverting BC decision
response=read.csv('asa.csv')
View(response)
h1=ggplot(response,aes(x=Response,y=Percentage))+geom_bar(stat='identity',aes(fill=factor(Response))) + guides(fill=guide_legend(title=NULL))
h2=h1+xlab('Response') +ylab('Percentage') + labs(title='Would you revert BC if hypothetically given the chance?')
h3=(h2+theme_gdocs())
print(h3)
h4=ggplotly(h3,tooltip=c('Response','Percentage'))      
h4
#Happiness with BC
emo=c("\U0001f622","\U0001f61e","\U0001f609","\U0001f604")
h1=ggplot(response,aes(x=Ratings,y=Percent))+geom_bar(stat='identity',aes(fill=factor(emo))) + guides(fill=guide_legend(title=NULL))
h2=h1+xlab('Ratings') +ylab('Percentage') + labs(title='Happy with the BC Decision?')
h3=(h2+theme_economist_white())
print(h3)
h4=ggplotly(h3,tooltip=c('Ratings','emo','Percent'))      
h4
#Reasons for BC
reasons=read_excel('asa1.xlsx')
library(dplyr)
reasons=reasons[-2]
reasons$Percentage=round(reasons$Percentage,2)da
g1=ggplot(reasons, aes(x = reasons$`Reason for DepC`))
g2=g1+geom_bar(aes(fill=(reasons$Percentage))) +co
g2 