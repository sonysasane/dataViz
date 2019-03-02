
df<- read.csv("Position_Salaries.csv")
str(df)
head(df)


install.packages("ggplot2")
library(ggplot2)
# visualizing for linear vs polynomial regression
# linear regression
ggplot(data = df, aes(x = Company, y = MarketShare, fill = Company), color = "black") +
  geom_bar(stat = "identity", width = 0.7) +
  ggtitle("Balloon Angioplasty Market Share Distribution") +
  xlab("Company") +
  ylab("Market share in %") +
  scale_y_continuous(breaks=seq(0,40,5)) +
  theme(axis.title.x = element_text(color = "Black", size = 12,face = "bold"),
        axis.title.y = element_text(color = "Black", size = 12,face = "bold"),
        axis.text.x = element_text(size = 11,face = "bold"),
        axis.text.y = element_text(size = 11, face = "bold"),
        legend.title = element_text(size = 10,face = "bold"),
        legend.text =  element_text(size = 10),
        legend.position = c(0.8,0.6),
        plot.title = element_text(color = "Black", size = 15,face = "bold"),
        text =  element_text(family = "Comic Sans MS"))

