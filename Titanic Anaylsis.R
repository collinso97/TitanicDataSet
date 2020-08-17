library(ggplot2)


train<- read.csv('train.csv')
test <- read.csv('test.csv')

df
# Most passangers in didnt survive
ggplot(train, aes( x = Survived))+
  geom_bar()+
  theme_bw()+
  labs(y = 'Passanger count',
       x = 'Survived',
       title = 'Survival Rates')

ggplot(train, aes(Sex, fill = factor(Survived))) + 
  geom_bar( position = 'dodge')+
  theme_bw() +
  labs(x = 'Sex',
       y = 'Passanger Count',
       title = 'Sex and Survival Rate')+
  scale_fill_discrete(name = "Survived")
 

  
ggplot(df, aes(x = Sex))+
  geom_bar()+
  facet_grid(Survived~Pclass)+
  theme_bw()+
  labs(x = 'Sex and Passanger Class',
       y = 'Survived and Passanger Count',
       title = ' Effect of Sex and Class 
       on Passanger Survival Rates ')


ggplot(df, aes(Age, fill = factor(Survived)))+
  geom_histogram()+
  facet_grid(~Pclass)+
  labs( title = 'Effect of Age and Class on Survival Rate')


# Adding a Varible Survived to the test df
test.survived<- data.frame(survived = rep('None', 
                                          nrow(test)),
                           test[,])
data.combined <-rbind(train, test.survived)


  
       
  