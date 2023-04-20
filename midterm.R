foo <- USArrests[1:50,]
bar <- USArrests[,c("Assault")]
foobar <- data.frame(foo,bar)
wordcloud(words = foobar[1:50,], freq = foobar[,1:50])
sink('foobar.csv', append = T)
cat(foobar)
sink()
rm(list = ls())
