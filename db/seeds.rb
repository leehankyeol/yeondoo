# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Quote.create(name: 'Orson Welles', content: 'There are three intolerable things in life - cold coffee, lukewarm champagne, and overexcited women...', book: '')

Quote.create(name: 'David Lynch', content: 'I like cappuccino, actually. But even a bad cup of coffee is better than no coffee at all.', book: '')

Quote.create(name: 'Robert Newton Peck', content: 'Somehow, the Good Lord don\'t want to see no man start a cold morning with just black coffee.', book: 'A Day No Pigs Would Die')

Quote.create(name: 'Albert Camus', content: 'Should I kill myself, or have a cup of coffee?', book: '');

Quote.create(name: 'James Mackintosh', content: 'The powers of a man\'s mind are directly proportioned to the quantity of coffee he drinks.', book: '')

Quote.create(name: 'T. S. Eliot', content: 'I have measured out my life with coffee spoons.', book: '')

Quote.create(name: 'Haruki Murakimi', content: 'The fresh smell of coffee soon wafted through the apartment, the smell that separates night from day.', book: 'Colorless Tsukuru Tazaki and His Years of Pilgrimage')

Quote.create(name: 'Howard Schultz', content: 'I can\'t imagine a day without coffee. I can\'t imagine!', book: '')

Quote.create(name: 'Jerry Seinfeld', content: 'We want to do a lot of stuff; we\'re not in great shape. We didn\'t get a good night\'s sleep. We\'re a little depressed. Coffee solves all these problems in one delightful little cup.', book: '')

Menu.create(name: 'Brazil', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Honduras', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Mexico', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Costarica', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Guatemala', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Colombia', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Kenya', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Tanzania', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Ethiopia', category: 'drinks', subcategory: 'coffee', tag: 'hand drip', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Dutch coffee', category: 'drinks', subcategory: 'coffee', tag: 'dutch', default: 'hot', price: 6500, option: 'iced', option_price: 6500)

Menu.create(name: 'Dutch latte', category: 'drinks', subcategory: 'coffee', tag: 'dutch', default: 'iced', price: 7000)

Menu.create(name: 'Espresso', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 4000)

Menu.create(name: 'Espresso doppio', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 4500)

Menu.create(name: 'Macchiato', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 5000)

Menu.create(name: 'Espresso con panna', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 5000)

Menu.create(name: 'Americano', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 4500, option: 'iced', option_price: 5500)

Menu.create(name: 'Cafe Vienna', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Cappuccino', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 5000)

Menu.create(name: 'Cafe latte', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 5000, option: 'iced', option_price: 6000)

Menu.create(name: 'Cafe mocha', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'hot', price: 5500, option: 'iced', option_price: 6500)

Menu.create(name: 'Affogato', category: 'drinks', subcategory: 'coffee', tag: 'espresso variation', default: 'iced', price: 7500)

Menu.create(name: 'Earl grey', category: 'drinks', subcategory: 'tea', tag: 'red tea', default: 'hot', price: 6000, option: 'iced', option_price: 6000)

Menu.create(name: 'Assam', category: 'drinks', subcategory: 'tea', tag: 'red tea', default: 'hot', price: 6000, option: 'iced', option_price: 6000)

Menu.create(name: 'Peppermint rooibos', category: 'drinks', subcategory: 'tea', tag: 'red tea', default: 'hot', price: 6000, option: 'iced', option_price: 6000)

Menu.create(name: 'Royal milk tea', category: 'drinks', subcategory: 'tea', tag: 'red tea', default: 'hot', price: 6000, option: 'iced', option_price: 7000)

Menu.create(name: 'Chamomile medley', category: 'drinks', subcategory: 'tea', tag: '', default: 'hot', price: 6000, option: 'iced', option_price: 6000)

Menu.create(name: 'Citron', category: 'drinks', subcategory: 'tea', tag: '', default: 'hot', price: 6000, option: 'iced', option_price: 6000)

Menu.create(name: 'Omija', category: 'drinks', subcategory: 'tea', tag: '', default: 'hot', price: 6000, option: 'iced', option_price: 7000)

Menu.create(name: 'Lemon', category: 'drinks', subcategory: 'tea', tag: '', default: 'hot', price: 6000, option: 'iced', option_price: 7000)

Menu.create(name: 'Quince', category: 'drinks', subcategory: 'tea', tag: '', default: 'hot', price: 6000, option: 'iced', option_price: 7000)

Menu.create(name: 'Tangerine ginger', category: 'drinks', subcategory: 'tea', tag: '', default: 'hot', price: 6000, option: 'iced', option_price: 6000)