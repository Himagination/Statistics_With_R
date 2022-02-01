# Downloaded from https://www.kaggle.com/onlineauctions/online-auctions-dataset
library(readr)
library(fst)

auctions_raw <- read_csv("D:/DataCamp/Statistician_R/Statistics_With_R/All_Datasets/auction.csv")

# Palm pilot has most data, no outliers
auctions <- auctions_raw %>%
  filter(item == "Palm Pilot M515 PDA") %>%
  select(price, openbid, auction_type)

write_fst(auctions, "auctions.fst")
