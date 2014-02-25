#RImpala simple test

library("RImpala")
rimpala.init(libs="/home/austin/Downloads/impala-jdbc-0.5-2/")
rimpala.connect(IP="172.25.1.150",principal="noSasl")

rimpala.query() # default query is "show tables"
rimpala.close()
