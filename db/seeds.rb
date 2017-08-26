User.destroy_all

u1 = User.create :name => 'Mina', :email => 'minaparnian66@gmail.com', :password => 'chicken',
:password_confirmation => 'chicken'

u2 = User.create :name => 'Saman', :email => 'abdisaman@gmail.com', :password => 'chicken',
:password_confirmation => 'chicken'


Image.destroy_all

i1 = Image.create :name => 'Wattamolla Beach', :history => 'Wattamolla is the local Aboriginal name of the area, meaning "place near running water".[1] That name was recorded as Watta-Mowlee by Matthew Flinders, but is today spelt Wattamolla.', :location => '	Royal National Park, Coast Track, Sutherland Shire NSW 2232',
:photo => 'http://footballsandstilettos.com/wp-content/uploads/2015/06/IMG_8309.jpg'

i2 = Image.create :name => 'Blue Mountains National Park', :history => 'Blue Mountains National Park is a vast region west of Sydney, Australia, and part of the Great Dividing Range. The Echo Point lookout, near the town of Katoomba, has panoramic views of Jamison Valley and the Three Sisters, a towering sandstone formation and sacred Aboriginal site. Trails lead through bushland, home to lyrebirds and crimson rosella parrots, to the Giant Stairway, which descends to Jamison Valley.', :location => 'New South Wales',
:photo => 'https://upload.wikimedia.org/wikipedia/commons/e/e4/Blue_mountains_-_three_sisters.jpg'

##################################################################################

#Assosiations

u1.images << i1
u2.images << i2
