library(rjson)
csv <- read.csv(file(file.choose(), encoding="CP932"), header=FALSE)
lst <- list()
for(i in 1:nrow(csv)) {
	dt <- as.POSIXlt(csv[i,1])
	menu <- as.character(csv[i,2])
	cal <- as.character(csv[i,3])
	mon <- dt$mon + 1
	day <- dt$mday
	lst <- c(lst,list(list(Mon=mon,Day=day,Menu=menu,Cal=cal)))
}
cat(toJSON(lst))
