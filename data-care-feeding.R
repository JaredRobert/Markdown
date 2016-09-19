p <- ggplot(subset(gapminder, continent !="oceania"),
            aes(c=gdpPercap, y=lifeExp)) #just initializes
p <- p + scale_x_log10() # log the x axis the right way
p + geom_point() #scatterplot
p + geom_point(aes(colour = continent)) # map continent to colour
p + geom_point(alpha = (1/3), size = 3) + geom_smooth(lwd = 3, se = FALSE)
p + geom_point(alpha = (1/3), size = 3) + facet_wrap(~continent) + geom_smooth(lwd = 1.5, se = FALSE)
