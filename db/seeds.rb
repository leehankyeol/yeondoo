# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside
#	the db with db:setup).

Quote.create(name: 'Orson Welles', content: 'There are three intolerable things in life - cold coffee, lukewarm champagne, and overexcited women...', book: '')

Quote.create(name: 'David Lynch', content: 'I like cappuccino, actually. But even a bad cup of coffee is better than no coffee at all.', book: '')

Quote.create(name: 'Robert Newton Peck', content: 'Somehow, the Good Lord don\'t want to see no man start a cold morning with just black coffee.', book: 'A Day No Pigs Would Die')

Quote.create(name: 'Albert Camus', content: 'Should I kill myself, or have a cup of coffee?', book: '');

Quote.create(name: 'James Mackintosh', content: 'The powers of a man\'s mind are directly proportioned to the quantity of coffee he drinks.', book: '')

Quote.create(name: 'T. S. Eliot', content: 'I have measured out my life with coffee spoons.', book: '')

Quote.create(name: 'Haruki Murakimi', content: 'The fresh smell of coffee soon wafted through the apartment, the smell that separates night from day.', book: 'Colorless Tsukuru Tazaki and His Years of Pilgrimage')

Quote.create(name: 'Howard Schultz', content: 'I can\'t imagine a day without coffee. I can\'t imagine!', book: '')

Quote.create(name: 'Jerry Seinfeld', content: 'We want to do a lot of stuff; we\'re not in great shape. We didn\'t get a good night\'s sleep. We\'re a little depressed. Coffee solves all these problems in one delightful little cup.', book: '')

# Beans
single_origin = Menu.create(category: 'beans', subcategory: '', tag: 'delivery',
	default: '100g', price: 7000, option: '200g', option_price: 13000)
single_origin.translations.create(name: '싱글 오리진 원두', :locale => 'ko')
single_origin.translations.create(name: 'Single-origin beans', :locale => 'en')

blended = Menu.create(category: 'beans', subcategory: '', tag: 'delivery',
	default: '100g', price: 7000, option: '200g', option_price: 13000)
blended.translations.create(name: '블렌디드 원두', :locale => 'ko')
blended.translations.create(name: 'Blended beans', :locale => 'en')

# Hand drip
brazil = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
brazil.translations.create(name: '브라질', :locale => 'ko')
brazil.translations.create(name: 'Brazil', :locale => 'en')

honduras = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
honduras.translations.create(name: '온두라스', :locale => 'ko')
honduras.translations.create(name: 'Honduras', :locale => 'en')

mexico = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
mexico.translations.create(name: '멕시코', :locale => 'ko')
mexico.translations.create(name: 'Mexico', :locale => 'en')

costarica = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
costarica.translations.create(name: '코스타리카', :locale => 'ko')
costarica.translations.create(name: 'Costarica', :locale => 'en')

guatemala = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
guatemala.translations.create(name: '과테말라', :locale => 'ko')
guatemala.translations.create(name: 'Guatemala', :locale => 'en')

colombia = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
colombia.translations.create(name: '콜롬비아', :locale => 'ko')
colombia.translations.create(name: 'Colombia', :locale => 'en')

kenya = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
kenya.translations.create(name: '케냐', :locale => 'ko')
kenya.translations.create(name: 'Kenya', :locale => 'en')

tanzania = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
tanzania.translations.create(name: '탄자니아', :locale => 'ko')
tanzania.translations.create(name: 'Tanzania', :locale => 'en')

ethiopia = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'hand drip',
	default: 'hot', price: 5500, option: 'iced', option_price: 6000)
ethiopia.translations.create(name: '에티오피아', :locale => 'ko')
ethiopia.translations.create(name: 'Ethiopia', :locale => 'en')

# Dutch
dutch_coffee = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'dutch',
	default: 'hot', price: 6500, option: 'iced', option_price: 6500)
dutch_coffee.translations.create(name: '더치', :locale => 'ko')
dutch_coffee.translations.create(name: 'Dutch coffee', :locale => 'en')

dutch_latte = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'dutch',
	default: 'iced', price: 6800)
dutch_latte.translations.create(name: '더치 라떼', :locale => 'ko')
dutch_latte.translations.create(name: 'Dutch latte', :locale => 'en')

bottle_set = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'dutch',
	default: '375ml', price: 11000, option: '750ml', option_price: 22000, image: 'dutch_bottle_set.jpg')
bottle_set.translations.create(name: '병 세트', :locale => 'ko')
bottle_set.translations.create(name: 'Bottle set', :locale => 'en')

pouch_set = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'dutch, delivery',
	default: 'box', price: 11000, image: 'dutch_pouch_set.jpg')
pouch_set.translations.create(name: '더치 파우치 세트', :locale => 'ko')
pouch_set.translations.create(name: 'Dutch pouch set', :locale => 'en')

# Espresso
espresso = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso',
	default: 'hot', price: 4000)
espresso.translations.create(name: '에스프레소', :locale => 'ko')
espresso.translations.create(name: 'Espresso', :locale => 'en')

doppio = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso',
	default: 'hot', price: 4500)
doppio.translations.create(name: '에스프레소 도피오', :locale => 'ko')
doppio.translations.create(name: 'Espresso doppio', :locale => 'en')

macchiato = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso',
	default: 'hot', price: 5000)
macchiato.translations.create(name: '마키아토', :locale => 'ko')
macchiato.translations.create(name: 'Macchiato', :locale => 'en')

con_panna = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso',
	default: 'hot', price: 5000)
con_panna.translations.create(name: '에스프레소 콘 판나', :locale => 'ko')
con_panna.translations.create(name: 'Espresso con panna', :locale => 'en')

# Espresso Variation
americano = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'hot', price: 4500, option: 'iced', option_price: 5500)
americano.translations.create(name: '아메리카노', :locale => 'ko')
americano.translations.create(name: 'Americano', :locale => 'en')

cafe_vienna = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'hot', price: 5000, option: 'iced', option_price: 6000)
cafe_vienna.translations.create(name: '비엔나 커피', :locale => 'ko')
cafe_vienna.translations.create(name: 'Cafe Vienna', :locale => 'en')

cafe_latte = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'hot', price: 5000, option: 'iced', option_price: 6000)
cafe_latte.translations.create(name: '카페 라떼', :locale => 'ko')
cafe_latte.translations.create(name: 'Cafe latte', :locale => 'en')

cafe_romano = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'hot', price: 5500, option: 'iced', option_price: 6500)
cafe_romano.translations.create(name: '카페 로마노', :locale => 'ko')
cafe_romano.translations.create(name: 'Cafe Romano', :locale => 'en')

cappuccino = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'hot', price: 5000, option: 'iced', option_price: 6500)
cappuccino.translations.create(name: '카푸치노', :locale => 'ko')
cappuccino.translations.create(name: 'Cappuccino', :locale => 'en')

cafe_mocha = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'hot', price: 5500, option: 'iced', option_price: 6500)
cafe_mocha.translations.create(name: '카페 모카', :locale => 'ko')
cafe_mocha.translations.create(name: 'Cafe mocha', :locale => 'en')

milk_syrup_coffee = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'hot', price: 5500, option: 'iced', option_price: 6500)
milk_syrup_coffee.translations.create(name: '베트남식 연유커피', :locale => 'ko')
milk_syrup_coffee.translations.create(name: 'Milk-syrup coffee', :locale => 'en')

affogato = Menu.create(category: 'drinks', subcategory: 'coffee', tag: 'espresso variation',
	default: 'iced', price: 7500)
affogato.translations.create(name: '아포가토', :locale => 'ko')
affogato.translations.create(name: 'Affogato', :locale => 'en')

# Tea
earl_grey = Menu.create(category: 'drinks', subcategory: 'tea', tag: 'rishi',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
earl_grey.translations.create(name: '얼 그레이', :locale => 'ko')
earl_grey.translations.create(name: 'Earl grey', :locale => 'en')

assam = Menu.create(category: 'drinks', subcategory: 'tea', tag: 'rishi',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
assam.translations.create(name: '아쌈', :locale => 'ko')
assam.translations.create(name: 'Assam', :locale => 'en')

rooibos = Menu.create(category: 'drinks', subcategory: 'tea', tag: 'rishi',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
rooibos.translations.create(name: '페퍼민트 루이보스', :locale => 'ko')
rooibos.translations.create(name: 'Peppermint rooibos', :locale => 'en')

chamomile = Menu.create(category: 'drinks', subcategory: 'tea', tag: 'rishi',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
chamomile.translations.create(name: '캐모마일 메들리', :locale => 'ko')
chamomile.translations.create(name: 'Chamomile medley', :locale => 'en')

tangerine_ginger = Menu.create(category: 'drinks', subcategory: 'tea', tag: 'rishi',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
tangerine_ginger.translations.create(name: '유기농 감귤생강', :locale => 'ko')
tangerine_ginger.translations.create(name: 'Tangerine ginger', :locale => 'en')

milk_tea = Menu.create(category: 'drinks', subcategory: 'tea', tag: '',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
milk_tea.translations.create(name: '로얄 밀크 티', :locale => 'ko')
milk_tea.translations.create(name: 'Royal milk tea', :locale => 'en')

hot_chocolate = Menu.create(category: 'drinks', subcategory: 'tea', tag: '',
	default: 'hot', price: 6000)
hot_chocolate.translations.create(name: '핫 초코', :locale => 'ko')
hot_chocolate.translations.create(name: 'Hot chocolate', :locale => 'en')

citron = Menu.create(category: 'drinks', subcategory: 'tea', tag: '',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
citron.translations.create(name: '유자', :locale => 'ko')
citron.translations.create(name: 'Citron', :locale => 'en')

quince = Menu.create(category: 'drinks', subcategory: 'tea', tag: '',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
quince.translations.create(name: '모과', :locale => 'ko')
quince.translations.create(name: 'Quince', :locale => 'en')

grapefruit = Menu.create(category: 'drinks', subcategory: 'tea', tag: '',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
grapefruit.translations.create(name: '자몽', :locale => 'ko')
grapefruit.translations.create(name: 'Grapefruit', :locale => 'en')

lemon = Menu.create(category: 'drinks', subcategory: 'tea', tag: '',
	default: 'hot', price: 6000, option: 'iced', option_price: 6500)
lemon.translations.create(name: '레몬', :locale => 'ko')
lemon.translations.create(name: 'Lemon', :locale => 'en')

# Beverage
iced_chocolate = Menu.create(category: 'drinks', subcategory: 'beverage', tag: '',
	default: 'iced', price: 7000)
iced_chocolate.translations.create(name: '아이스 초코', :locale => 'ko')
iced_chocolate.translations.create(name: 'Iced chocolate', :locale => 'en')

haagen_dazs = Menu.create(category: 'drinks', subcategory: 'beverage', tag: '',
	default: 'iced', price: 7000)
haagen_dazs.translations.create(name: '하겐다즈', :locale => 'ko')
haagen_dazs.translations.create(name: 'Häagen-Dazs', :locale => 'en')

lemonade = Menu.create(category: 'drinks', subcategory: 'beverage', tag: '',
	default: 'iced', price: 7000)
lemonade.translations.create(name: '생 레몬에이드', :locale => 'ko')
lemonade.translations.create(name: 'Lemonade', :locale => 'en')

peach_earl_grey = Menu.create(category: 'drinks', subcategory: 'beverage', tag: '',
	default: 'iced', price: 6500)
peach_earl_grey.translations.create(name: '복숭아 얼 그레이', :locale => 'ko')
peach_earl_grey.translations.create(name: 'Peach earl grey', :locale => 'en')

grapefruitade = Menu.create(category: 'drinks', subcategory: 'beverage', tag: '',
	default: 'iced', price: 6500)
grapefruitade.translations.create(name: '자몽에이드', :locale => 'ko')
grapefruitade.translations.create(name: 'Grapefruitade', :locale => 'en')

citronade = Menu.create(category: 'drinks', subcategory: 'beverage', tag: '',
	default: 'iced', price: 6500)
citronade.translations.create(name: '유자에이드', :locale => 'ko')
citronade.translations.create(name: 'Citronade', :locale => 'en')

# Shaved ice
red_bean = Menu.create(category: 'sides', subcategory: 'shaved_ice', tag: '',
	default: 'iced', price: 6000)
red_bean.translations.create(name: '눈꽃 팥 컵빙수', :locale => 'ko')
red_bean.translations.create(name: 'Shaved ice with red beans', :locale => 'en')

green_tea_leaves = Menu.create(category: 'sides', subcategory: 'shaved_ice', tag: '',
	default: 'iced', price: 6500)
green_tea_leaves.translations.create(name: '눈꽃 그린밀순 컵빙수', :locale => 'ko')
green_tea_leaves.translations.create(name: 'Shaved ice with green tea leaves', :locale => 'en')

black_sesame = Menu.create(category: 'sides', subcategory: 'shaved_ice', tag: '',
	default: 'iced', price: 6500)
black_sesame.translations.create(name: '눈꽃 흑임자 컵빙수', :locale => 'ko')
black_sesame.translations.create(name: 'Shaved ice with black sesames', :locale => 'en')

mango = Menu.create(category: 'sides', subcategory: 'shaved_ice', tag: '',
	default: 'iced', price: 7000)
mango.translations.create(name: '눈꽃 망고 컵빙수', :locale => 'ko')
mango.translations.create(name: 'Shaved ice with mangos', :locale => 'en')

# Wine
sangria = Menu.create(category: 'drinks', subcategory: 'wine', tag: 'mixed',
	default: 'iced', price: 8000)
sangria.translations.create(name: '샹그리아', :locale => 'ko')
sangria.translations.create(name: 'Sangria', :locale => 'en')

vin_chaud = Menu.create(category: 'drinks', subcategory: 'wine', tag: 'mixed',
	default: 'hot', price: 8000)
vin_chaud.translations.create(name: '뱅쇼', :locale => 'ko')
vin_chaud.translations.create(name: 'Vin chaud', :locale => 'en')

la_mision = Menu.create(category: 'drinks', subcategory: 'wine', tag: '',
	default: 'glass', price: 8000, option: 'bottle', option_price: 38000)
la_mision.translations.create(name: 'La Mision Cabernet Sauvignon', :locale => 'ko')
la_mision.translations.create(name: 'La Mision Cabernet Sauvignon', :locale => 'en')

monte = Menu.create(category: 'drinks', subcategory: 'wine', tag: '',
	default: 'bottle', price: 38000)
monte.translations.create(name: 'Monte Guelfo Chianti', :locale => 'ko')
monte.translations.create(name: 'Monte Guelfo Chianti', :locale => 'en')

rosso = Menu.create(category: 'drinks', subcategory: 'wine', tag: '',
	default: 'bottle', price: 70000)
rosso.translations.create(name: 'Rosso di Verzella Etna Rosso', :locale => 'ko')
rosso.translations.create(name: 'Rosso di Verzella Etna Rosso', :locale => 'en')

house_wine = Menu.create(category: 'drinks', subcategory: 'wine', tag: '',
	default: 'bottle', price: 40000)
house_wine.translations.create(name: 'The Magnificent Wine Co. House Wine', :locale => 'ko')
house_wine.translations.create(name: 'The Magnificent Wine Co. House Wine', :locale => 'en')

fish_house = Menu.create(category: 'drinks', subcategory: 'wine', tag: '',
	default: 'bottle', price: 40000)
fish_house.translations.create(name: 'The Magnificent Wine Co. Fish House', :locale => 'ko')
fish_house.translations.create(name: 'The Magnificent Wine Co. Fish House', :locale => 'en')

chateau = Menu.create(category: 'drinks', subcategory: 'wine', tag: '',
	default: 'bottle', price: 62000)
chateau.translations.create(name: 'Chateau Lecusse Blanc Doux', :locale => 'ko')
chateau.translations.create(name: 'Chateau Lecusse Blanc Doux', :locale => 'en')

# Side menu
cheesecake = Menu.create(category: 'sides', subcategory: 'cake', tag: '',
	default: 'piece', price: 5500)
cheesecake.translations.create(name: '뉴욕 치즈케이크', :locale => 'ko')
cheesecake.translations.create(name: 'New York cheesecake', :locale => 'en')

chocolate_cake = Menu.create(category: 'sides', subcategory: 'cake', tag: '',
	default: 'piece', price: 6500)
chocolate_cake.translations.create(name: '초콜릿 케이크', :locale => 'ko')
chocolate_cake.translations.create(name: 'Chocolate cake', :locale => 'en')

honey_bread = Menu.create(category: 'sides', subcategory: 'bread', tag: '',
	default: 'piece', price: 5000)
honey_bread.translations.create(name: '허니 브레드', :locale => 'ko')
honey_bread.translations.create(name: 'Honey bread', :locale => 'en')

bagle = Menu.create(category: 'sides', subcategory: 'bread', tag: '',
	default: 'piece', price: 3500)
bagle.translations.create(name: '베이글과 크림 치즈', :locale => 'ko')
bagle.translations.create(name: 'Bagle w/ cream cheese', :locale => 'en')

chocolate_cookie = Menu.create(category: 'sides', subcategory: 'cookie', tag: '',
	default: 'piece', price: 1500)
chocolate_cookie.translations.create(name: '초코 쿠키', :locale => 'ko')
chocolate_cookie.translations.create(name: 'Chocloate cookie', :locale => 'en')

olives = Menu.create(category: 'sides', subcategory: 'vegetable', tag: '',
	default: 'dish', price: 2000)
olives.translations.create(name: '올리브', :locale => 'ko')
olives.translations.create(name: 'Olives', :locale => 'en')

cheese_plate = Menu.create(category: 'sides', subcategory: 'cheese', tag: '',
	default: 'plate', price: 6000)
cheese_plate.translations.create(name: '미니 치즈 플레이트', :locale => 'ko')
cheese_plate.translations.create(name: 'Mini cheese plate', :locale => 'en')

sausage_plate = Menu.create(category: 'sides', subcategory: 'sausage', tag: '',
	default: 'plate', price: 12000)
sausage_plate.translations.create(name: '소시지 플레이트', :locale => 'ko')
sausage_plate.translations.create(name: 'Sausage plate', :locale => 'en')

# Staffs
park_seongyun = Staff.create(photo: 'seongyun.jpg', facebook_id: '100001894578713')
park_seongyun.translations.create(name: '박성윤', description: '"잠아, 날 두고 어디 갔니?"', :locale => 'ko')
park_seongyun.translations.create(name: 'Park Seongyun', description: '"Can\'t sleep."', :locale => 'en')

park_seonghye = Staff.create(photo: 'seonghye.jpg', facebook_id: '100001821591937')
park_seonghye.translations.create(name: '박성혜', description: '"행복은 사실 늘 곁에 있는 거였지? 봄 낮 막걸리 캬!"', :locale => 'ko')
park_seonghye.translations.create(name: 'Park Seonghye', description: '"Spring, daylight, Makgolee, I\'m happy."', :locale => 'en')

lee_sangeon = Staff.create(photo: 'sangeon.jpg', facebook_id: 'remeberthefithofnovember')
lee_sangeon.translations.create(name: '이상언', description: '"와인에 올리브를 먹는 삶이란."', :locale => 'ko')
lee_sangeon.translations.create(name: 'Lee Sangeon', description: '"What a life with olives and wine."', :locale => 'en')

# Blog
FileUtils.mkdir_p('public/posts') unless File.directory?('public/posts')

Post.create(title: '카페 연두 블로그의 첫 포스트입니다.', parameterized_title: 'the-first-post', summary: '사실 앞으로 어떤 내용들로 블로그를 채우는 것이 좋을지 아직 고민을 다 마치지 못했어요.', content: '안녕하세요. 사실 앞으로 어떤 내용들로 블로그를 채우는 것이 좋을지 아직 고민을 다 마치지 못했어요.', thumbnail: 'yeondoo.jpg')

FileUtils.mkdir_p('public/posts/1') unless File.directory?('public/posts/1')
FileUtils.mkdir_p('public/posts/1/thumbnail') unless File.directory?('public/posts/1/thumbnail')
FileUtils.cp 'app/assets/images/yeondoo.jpg', 'public/posts/1/thumbnail/dummy.jpg'
