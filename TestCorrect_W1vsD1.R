library(rFdk)
ttConnect()
#from sunday to sunday
w1<-ttFeed.BarHistory("EURUSD", "Bid", "W1", as.Date('2016-02-28', tz="GMT"), as.Date('2016-03-06', tz="GMT"))
d1<-ttFeed.BarHistory("EURUSD", "Bid", "D1", as.Date('2016-02-28', tz="GMT"), as.Date('2016-03-06', tz="GMT"))

w1[1,open] == d1[1, open]
w1[.N,close] == d1[.N, close]
