#install.packages("twilio")

library(twilio)


# dane do logowania powinny być poukrywane. Raz wczytam to będą widoczne w środowisku.
# definiujac w pliku .Renviron wywoluje je jak ponizej.
Sys.getenv("TWILIO_SID")
Sys.getenv("TWILIO_TOKEN")

# ! niekiedy TWILIO_TOKEN SIE ZMIENIA.

##dluzsza wersja, nie zawsze dziala
from_number<- "+12674406233"
to_number <- "+48515784380"

my_message <- tw_send_message(
  to = Sys.getenv(to_number),
  from = Sys.getenv(from_number),
  body = paste("jestes mistrzem swiata","kot")
)
##lub w ten sposób

#wyslanie prostej wiadomosci tekstowej
my_message <- tw_send_message("+48515784380","+12674406233","tesT")

  
#wyslanie wiadomosci mms
my_message <- tw_send_message("+48796806628","+12674406233","tesT",
"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Kot-019.jpg/1024px-Kot-019.jpg")

##testowanie

names(my_message)
my_message$body

my_message$status



#wysylanie do kilku adresatow
numery<-c("+48515784380","+48515784380","+48515784380")
wiadomosci<- letters[1:5]

status<- NULL 

for( i in numery){
  for(j in wiadomosci){
sms<- tw_send_message(i,"+12674406233",j)
print(paste(i,j,sms$status))
  }
}




