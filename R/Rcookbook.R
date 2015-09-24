# Определяем текущую папку (для упрощения пути к файлам)
setwd('/Users/casy/Dropbox/My_Projects/2015_06_27_Skolkovo4/KazanYears/data/')

# Читаем файл
p1 <- "2011_final_to_Merge.csv"
df1 <- read.csv(p1, header = T, sep = ",", stringsAsFactors = T)

# Смотрим его табулярно
View(df1)

# склеиваем две таблицы
df3 <- merge(df1,df2,by=c('number') ,all.x = T, all.y = F)
View(df3)

# смотрим фильтрованную таблицу
View(df3[df3$lat>55.6,])


# смотрим саммари и структуру таблицы
summary(df3)
str(df33)


# гистограмма
hist(df3$lat)
# график (в данном случае карта бедного человека)
plot(df3$lat, df3$lon,type = 'p',color=df3$verified)

# записываем данные в файл
rPath <- '/Users/casy/Dropbox/My_Projects/2015_06_27_Skolkovo4/KazanYears/data/2011_finalToCartoDB.csv'
write.csv2(df3, file=rPath,na = "", quote=T)
