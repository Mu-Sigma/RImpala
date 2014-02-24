#RImpala simple test

library("RImpala")
rimpala.init()
rimpala.connect(IP="172.25.1.150")

rimpala.query() # default query is "show tables"

result = rimpala.query("select * from facts2 limit 10")

li = .jevalArray(result) #made the result a list
rw = lapply(l, .jevalArray) #now they are rows
Reduce ("rbind", rw) #bind the rows together
