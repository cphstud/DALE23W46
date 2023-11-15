library(dplyr)
library(RMariaDB)
library(DBI)
#connect til world
wc <- dbConnect(MariaDB(),
                host="localhost",
                user="root",
                password="root123",
                db="world",
                port="3306"
)

#find de 10 mest urbaniserede lande og de 10 mindst urbaniserede

# ved SQL
query='SELECT ..'

dfW <- dbGetQuery(wc,query)

# ved R
dfWCt <- dbGetQuery(wc,"select..")
dfWCit <- dbGetQuery(wc,"select..")
dfWCl <- dbGetQuery(wc,"select ..")
dfW <- inner_join(x,y,by="")

dfWurb <- dfW %>% 
  group_by() %>% 
  summarise() %>% 
  distinct() %>% 
  arrange() %>% 
  filter() %>% 
  ungroup()
