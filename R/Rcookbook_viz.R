df <- mtcars

## Гистограмма
hist(df$mpg, breaks = 10)

## Боксплот
boxplot(mpg ~ cyl, df)

## plot
plot(df$mpg, df$hp, type='p')

library(ggplot2)

ggplot(df, aes(x=mpg))+
         geom_histogram(fill= "white", col='black')


ggplot(df, aes(x=hp, fill=as.factor(vs)))+
  geom_dotplot()


ggplot(df, aes(x=mpg, fill=as.factor(am)))+
  geom_density(alpha=0.5)

ggplot(df, aes(x=as.factor(am), y=hp))+
  geom_boxplot()


ggplot(df, aes(x=hp, y=mpg, col=as.factor(vs), size=wt))+
  geom_point()
