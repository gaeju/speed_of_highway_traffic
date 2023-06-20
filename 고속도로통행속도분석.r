library(xlsx)

road <- read.xlsx("C:/r_workspace/구간속도 1년(2).xlsx", header = T, sheetIndex = 1)
head(road,10)

str(road)

#-------<요일별로 데이터 분류하기>---------

rownames(road) <- c('00시','01시','02시','03시','04시','05시',
                    '06시','07시','08시','09시','10시','11시',
                    '12시','13시','14시','15시','16시','17시',
                    '18시','19시','20시','21시','22시','23시')
colnames(road) <- rep(c('Sun','Mon','Tus','Wen','Thu','Fri','Sat'),
                      time = 84/7)
# 요일별 평균 구하기
for (i in 0:6) {
  Sun <- road[,i + 1 + 6 * i]
  Mon <- road[,i + 2 + 6 * i]
  Tus <- road[,i + 3 + 6 * i]
  Wen <- road[,i + 4 + 6 * i]
  Thu <- road[,i + 5 + 6 * i]
  Fri <- road[,i + 6 + 6 * i]
  Sat <- road[,i + 7 + 6 * i]
}


mean(Sun)
mean(Mon)
mean(Tus)
mean(Wen)
mean(Thu)
mean(Fri)
mean(Sat)

#

Q1 = subset(road,rownames(road) == c('00시','01시','02시',
                                     '03시','04시','05시'))
Q2 = subset(road,rownames(road) == c('06시','07시','08시',
                                     '09시','10시','11시'))
Q3 = subset(road,rownames(road) == c('12시','13시','14시',
                                     '15시','16시','17시'))
Q4 = subset(road,rownames(road) == c('18시','19시','20시',
                                     '21시','22시','23시'))

#새벽
for (i in 0:6) {
  Sun_Q1 <- Q1[,i + 1 + 6 * i]
  Mon_Q1 <- Q1[,i + 2 + 6 * i]
  Tus_Q1 <- Q1[,i + 3 + 6 * i]
  Wen_Q1 <- Q1[,i + 4 + 6 * i]
  Thu_Q1 <- Q1[,i + 5 + 6 * i]
  Fri_Q1 <- Q1[,i + 6 + 6 * i]
  Sat_Q1 <- Q1[,i + 7 + 6 * i]
}
print(mean(Sun_Q1))
print(mean(Mon_Q1))
print(mean(Tus_Q1))
print(mean(Wen_Q1))
print(mean(Thu_Q1))
print(mean(Fri_Q1))
print(mean(Sat_Q1))

#오전
for (i in 0:6) {
  Sun_Q2 <- Q2[,i + 1 + 6 * i]
  Mon_Q2 <- Q2[,i + 2 + 6 * i]
  Tus_Q2 <- Q2[,i + 3 + 6 * i]
  Wen_Q2 <- Q2[,i + 4 + 6 * i]
  Thu_Q2 <- Q2[,i + 5 + 6 * i]
  Fri_Q2 <- Q2[,i + 6 + 6 * i]
  Sat_Q2 <- Q2[,i + 7 + 6 * i]
}
print(mean(Sun_Q2))
print(mean(Mon_Q2))
print(mean(Tus_Q2))
print(mean(Wen_Q2))
print(mean(Thu_Q2))
print(mean(Fri_Q2))
print(mean(Sat_Q2))


#오후
for (i in 0:6) {
  Sun_Q3 <- Q3[,i + 1 + 6 * i]
  Mon_Q3 <- Q3[,i + 2 + 6 * i]
  Tus_Q3 <- Q3[,i + 3 + 6 * i]
  Wen_Q3 <- Q3[,i + 4 + 6 * i]
  Thu_Q3 <- Q3[,i + 5 + 6 * i]
  Fri_Q3 <- Q3[,i + 6 + 6 * i]
  Sat_Q3 <- Q3[,i + 7 + 6 * i]
}
print(mean(Sun_Q3))
print(mean(Mon_Q3))
print(mean(Tus_Q3))
print(mean(Wen_Q3))
print(mean(Thu_Q3))
print(mean(Fri_Q3))
print(mean(Sat_Q3))


#밤
for (i in 0:6) {
  Sun_Q4 <- Q4[,i + 1 + 6 * i]
  Mon_Q4 <- Q4[,i + 2 + 6 * i]
  Tus_Q4 <- Q4[,i + 3 + 6 * i]
  Wen_Q4 <- Q4[,i + 4 + 6 * i]
  Thu_Q4 <- Q4[,i + 5 + 6 * i]
  Fri_Q4 <- Q4[,i + 6 + 6 * i]
  Sat_Q4 <- Q4[,i + 7 + 6 * i]
}
print(mean(Sun_Q4))
print(mean(Mon_Q4))
print(mean(Tus_Q4))
print(mean(Wen_Q4))
print(mean(Thu_Q4))
print(mean(Fri_Q4))
print(mean(Sat_Q4))



