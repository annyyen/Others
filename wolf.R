#Add data 
#統計完2019-07-29 #382
date = rep(c("2019-07-29"),10) %>% as.Date()
position = c(1:10)
name = c("阿虎","梁以辰","婁峻碩","潘映竹","陳孟潔","宇辰","愷樂","陳零九","邱鋒澤","張益嘉")
role = c("騎士","預言家","平民","平民","狼人","女巫","狼人","平民","狼王","獵人")
die = c(3,5,0,1,0,2,4,0,6,7) #被淘汰順序1:10, 0:遊戲結束還活著
score = ifelse(role == "狼人"|role =="狼王"|role =="雪狼",1,0) #Win=1, lose=0
MVP = c(0,0,0,0,1,0,0,0,0,0)
a=data.frame(date,position,name,role,die,MVP,score)
b=rbind(b,a)
write.csv(b,file="wolf.csv")

#愷樂、宇辰│陳零九、邱鋒澤、梁以辰、婁峻碩、阿虎、潘映竹、陳孟潔、張益嘉
b=read.csv("wolf.csv",stringsAsFactors = F)
b=b[,-1]
table(b$name,b$role) #看誰拿到哪個角色多
table(b$name,b$score) #勝率 
c=b[-c(303:312),]#刪掉哪一row
c=b
row.names(b)=1:nrow(b)
#0,0,0,0,0,0,0,0,0,0
#1,1,1,1,1,1,1,1,1,1
#"","","","","","","","","",""
#狼王","雪狼","狼人","女巫,"預言家","獵人","騎士","禁言長老","平民"


