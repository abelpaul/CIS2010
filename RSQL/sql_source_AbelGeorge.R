sqlstr <- "SELECT state FROM irs"
xa3 <- sqldf(sqlst)

sqlstr <- "SELECT DISTINCT state FROM irs"
xb3 <- sqldf(sqlstr)

sqlstr <- "SELECT DISTINCT state FROM zp"
xc3 <- sqldf(sqlstr)

sqlstr <- "SELECT zipcode, n1, numdep, aagi FROM irs WHERE zipcode ='30303' "
xd3 <- sqldf(sqlstr)

sqlstr <- "SELECT zipcode, n1, numdep, aagi/n1 FROM irs WHERE zipcode ='30303' "
x4a <- sqldf(sqlstr)

sqlstr <- "SELECT zipcode, aagi, n1, (1.0*aagi)/n1 FROM irs WHERE zipcode ='30303' "
x4b <- sqldf(sqlstr)

str <- "SELECT zipcode, aagi, n1, (1.0*aagi)/n1 FROM irs WHERE zipcode ='30303' "
x4b <- sqldf(sqlstr)

str <- "SELECT zipcode, (1000.0*aagi)/n1 FROM irs WHERE state ='GA' "
x4d <- sqldf(sqlstr)

sqlstr <- "SELECT zipcode, SUM (aagi*1000.0), SUM (1000.0*aagi)/sum(n1) FROM irs WHERE zipcode ='30303' "
x4ee<- sqldf(sqlstr)

sqlstr <- "SELECT state, city, zipcode FROM zp WHERE city='ATLANTA' AND state='GA'"
x5b <- sqldf(sqlstr )

sqlstr <- "SELECT zipcode, SUM (aagi*1000.0), SUM (1000.0*aagi)/sum(n1) FROM irs WHERE zipcode ='30303' "
x4ee<- sqldf(sqlstr)

sqlstr <- "SELECT zp.state, zp.city, AVG(irs.aagi*1000.0), SUM(irs.aagi*1000.0), SUM(irs.n1),  SUM(irs.aagi*1000.0)/SUM(irs.n1)
FROM zp JOIN irs ON zp.zipcode = irs.zipcode 
WHERE zp.city='ATLANTA' AND zp.state='GA'"
x6a <- sqldf(sqlstr)

myName = paste("My name is Abel George", date());
