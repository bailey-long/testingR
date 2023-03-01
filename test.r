library(ggplot2)

venezuela.data <- read.csv(file="venezuela.csv")

p1 <- ggplot() + 
    geom_line(aes(y = units, x = year), data = venezuela.data) +
    scale_x_continuous(breaks=seq(2002,2016,2)) + 
    theme(text=element_text(family="Tahoma"))
 
p1 + labs(title = "Venezuela's collapsing car sales", x = "Year", y = "Thousands of units", caption = "Data: Cavenez.com")
