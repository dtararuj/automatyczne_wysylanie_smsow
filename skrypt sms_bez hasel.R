#install.packages("twilio")

library(twilio)


#dane do logowania powinny byÄ‡ poukrywane. Raz wczytam to bÄ™dÄ… widoczne w Ĺ›rodowisku.
Sys.setenv(TWILIO_SID= "ACd6cba...")
Sys.setenv(TWILIO_TOKEN = "6d8ff07...")

##dluzsza wersja, nie zawsze dziala
from_number<- "+1267440..."
to_number <- "+4851....."

my_message <- tw_send_message(
  to = Sys.getenv(to_number),
  from = Sys.getenv(from_number),
  body = paste("jestes mistrzem swiata","kot")
)

##lub w ten sposĂłb

#wyslanie prostej wiadomosci tekstowej
my_message <- tw_send_message("+48515....","+1267.....","tesT")

  
#wyslanie wiadomosci mms
my_message <- tw_send_message("+4879.....","+1267.....","tesT",
"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Kot-019.jpg/1024px-Kot-019.jpg")

##testowanie

names(my_message)
my_message$body

my_message$status



#wysylanie do kilku adresatow
numery<-c("+48515.....","+4851.....","+48515.....")
wiadomosci<- letters[1:5]

status<- NULL 

for( i in numery){
  for(j in wiadomosci){
sms<- tw_send_message(i,"+12674406233",j)
print(paste(i,j,sms$status))
  }
}




