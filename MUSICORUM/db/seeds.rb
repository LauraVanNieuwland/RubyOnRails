require "open-uri"


puts "Cleaning database"
User.destroy_all
Instrument.destroy_all
puts 'Creating 4 fake users...'
file1 = URI.open("https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
user1 = User.create(first_name: "Addison", last_name: "nieuwenhuis",  
description: "I host jam session once every month, i like to play differen instruments", 
phone_number: "0686166366", email: "Adx@gmail.com", password: "123456" )
user1.profile_image.attach(io: file1, filename: "user1.png", content_type: 'image/png')

file2 = URI.open("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80")
user2 = User.create(first_name: "luca", last_name: "corra", description: "I am interested in learning different music instruments", 
phone_number: "0655443567", email: "corra@gmail.com", password: "678900")
user2.profile_image.attach(io:file2, filename:"user2.png", content_type: 'image/png')

file3 = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
user3 =User.create(first_name: "Roos", last_name: "nieuwland", description: "I am music teacher, like to share my passion with others", 
phone_number: "0655991124", email: "ro@gmail.com", password: "111111")
user3.profile_image.attach(io:file3, filename:"user3.png", content_type: 'image/png')



file4 = URI.open("https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
user4 = User.create(first_name: "carmen", last_name: "pustjens", description: "owner of music instruments store", 
phone_number: "0686166366", email: "coco@gmail.com", password: "222222" )
user4.profile_image.attach(io:file4, filename:"user4.png", content_type: 'image/png')


puts 'Creating 6 fake instruments...'
filex = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518875/drum_2_zm3fkc.jpg")
instrument1  = Instrument.create(instrument_name: "Drum", description:"Complete drum set" ,
price: "20", location: "Haparandaweg 720 Amsterdam", user: user1 )
instrument1.image.attach(io:filex, filename:"instrument1.png", content_type: 'image/png')

filey = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518874/eletric_guitar_elpgtc.jpg")
instrument2= Instrument.create(instrument_name: "Guitar", description:"Electric Guitar" ,
price: "100", location: "Kwekerijlaan 1 Amsterdam", user: user2)
instrument2.image.attach(io:filey, filename:"instrument2.png", content_type: 'image/png')

filez = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518875/trombone_amrr9u.jpg")
instrument3= Instrument.create(instrument_name: "Trombone", description:"Classic Trombone" ,
price: "70", location: "Wilhelminastraat 59 Amsterdam", user: user3)
instrument3.image.attach(io:filez, filename:"instrument3.png", content_type: 'image/png')

filed = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518876/banjo_lljlgl.jpg")
instrument4= Instrument.create(instrument_name: "Banjo", description:"Old Banjo" ,
price: "150", location: "Nieuwstraat 20 Breda", user: user4)
instrument4.image.attach(io:filed, filename:"instrument4.png", content_type: 'image/png')

filez = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598518912/saxophone_mseaea.jpg")
instrument3= Instrument.create(instrument_name: "Saxophone", description:"Classic als sax" ,
price: "70", location: "Espakker 23 Teteringen", user: user3)
instrument3.image.attach(io:filez, filename:"instrument3.png", content_type: 'image/png')

# filed = URI.open("https://res.cloudinary.com/dexfami2g/image/upload/v1598533369/zb6h1f6y4n8qt7wb7tmrcyfnmd18.jpg")
# instrument4= Instrument.create(instrument_name: "Flute", description:"Please blow meeeeee" ,
# price: "150", location: "Roosdokkade 27 Amsterdam", user: user4)
# instrument4.image.attach(io:filed, filename:"instrument4.png", content_type: 'image/png')

