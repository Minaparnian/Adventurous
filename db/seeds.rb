User.destroy_all

u1 = User.create :name => 'Mina', :email => 'minaparnian66@gmail.com', :password => 'chicken',
:password_confirmation => 'chicken'

u2 = User.create :name => 'Saman', :email => 'abdisaman@gmail.com', :password => 'chicken',
:password_confirmation => 'chicken'


Image.destroy_all

i1 = Image.create :name => 'Wattamolla Beach', :history => 'Wattamolla is the local Aboriginal name of the area, meaning "place near running water". That name was recorded as Watta-Mowlee by Matthew Flinders, but is today spelt Wattamolla.', :location => '	Royal National Park, Coast Track, Sutherland Shire NSW 2232',
:image => 'http://footballsandstilettos.com/wp-content/uploads/2015/06/IMG_8309.jpg'

i2 = Image.create :name => 'Blue Mountains National Park', :history => 'Blue Mountains National Park is a vast region west of Sydney, Australia, and part of the Great Dividing Range. The Echo Point lookout, near the town of Katoomba, has panoramic views of Jamison Valley and the Three Sisters, a towering sandstone formation and sacred Aboriginal site. Trails lead through bushland, home to lyrebirds and crimson rosella parrots, to the Giant Stairway, which descends to Jamison Valley.', :location => 'New South Wales',
:image => 'https://upload.wikimedia.org/wikipedia/commons/e/e4/Blue_mountains_-_three_sisters.jpg'

i3 = Image.create :name => 'Caves Beach', :history => 'Caves Beach is a locality on the Swansea peninsula between Lake Macquarie and the Pacific Ocean in New South Wales, Australia. It is part of the City of Lake Macquarie local government area. The locality is named for the large number of caves on the nearby coastline. It has a surfing beach which is popular with the local surfers. It is highly popular for spearfishing, with the premier target species being the elusive red morwong.', :location => '
Caves Beach, New South Wales 2281',
:image => 'http://kalatas.com.au/wp-content/uploads/2014/11/deep-chambered-cave-at-Caves-Beach-750x500.jpg'

i4 = Image.create :name => 'Zillie Falls', :history => 'Zillie Falls are spectacular falls located on the Waterfalls Circuit with Millaa Millaa and Ellinjaa Falls. There is a lovely viewing platform at the base of the falls where you can enjoy a view of the cascading water and rapids. Its a wonderful place to enjoy a picnic lunch or simply relax and enjoy the beautiful surroundings. A colony of Flying Fox are often spotted near the car park, so keep your eyes out!', :location => 'Wooroonooran QLD 4886',
:image => 'http://www.millaamillaa.com/images/ElinjaaFalls2.jpg'

i5 = Image.create :name => 'Main Range National Park', :history => 'The Main Range is a mountain range and a national park in Queensland, Australia, located predominantly in Tregony, Southern Downs Region 85 kilometres (53 mi) southwest of Brisbane. It is part of the World Heritage Site Gondwana Rainforests of Australia (formerly known as the Central Eastern Rainforest Reserves). It protects the western part of a semicircle of mountains in South East Queensland known as the Scenic Rim. This includes the largest area of rainforest in South East Queensland.[1] The park is part of the Scenic Rim Important Bird Area, identified as such by BirdLife International because of its importance in the conservation of several species of threatened birds.', :location => 'Cunningham Hwy, Warwick QLD 4370',
:image => 'http://www.horizonguides.com.au/media/k2/items/cache/28b8f12309e9ac4afaade20e5d04ffc2_XL.jpg'

i6 = Image.create :name => 'Girraween National Park', :history => 'Girraween National Park is an area of the Granite Belt in the Darling Downs region of Queensland, Australia reserved as a national park. Girraween is known for its spectacular flowers, dramatic landscapes and unique wildlife. Bushwalking and rock climbing are the most popular activities in the park.', :location => 'Pyramids Rd, Wyberba QLD 4382',
:image => 'https://abw.blob.core.windows.net/img/qld/girraween-national-park/castle-rock/7876.jpg'


Comment.destroy_all

c1 = Comment.create :content => 'Thats really nice place!'
c2 = Comment.create :content => 'Hey, when we can catch up in this place?'
c3 = Comment.create :content => 'Such a nice place!'
c4 = Comment.create :content => 'I heve been there several time, i really recomend though'
##################################################################################

#Assosiations

u1.images << i1 << i2 << i3 << i4 << i5 << i6
u2.images << i2


u1.comments << c1 << c2
u2.comments << c3 << c4
i1.comments << c1 << c4
i2.comments << c2 << c3
