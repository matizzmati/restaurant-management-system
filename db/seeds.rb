restaurants = [
  ['Loffredo', 'via Vestricio Spurinna 1', '10:00 - 20:00'],
  ['Port’Alba', 'via Port’Alba 2', '10:00 - 20:00'],
  ['Antico Forno', 'via Pirezzi 12', '12:00 - 22:00'],
  ['Maruzzella', 'via Carpatia 20b', '11:00 - 23:00'],
  ['La Divina', 'Divina 12', '12:00 - 24:00']
]

pizzas = [
  ['SUPER SUPREME', 32.99, 'Wołowina, pikantna wieprzowina, kiełbasa pepperoni, szynka, ser mozzarella'],
  ['PROSCIUTTO ET RUCOLA', 32.99, 'Szynka dojrzewająca, ser Grana Padano, pomidorki koktajlowe, rukola, mozzarella, sos pomidorowy'],
  ['QUATTRO FORMAGGI', 33.99, 'Ser cheddar, ser camembert, ser lazur, ser mozzarella, pomidorki koktajlowe, ziołowy sos pomidorowy, zioła prowansalskie'],
  ['MARGHERITA', 20.99, 'Ser mozzarella, ziołowy sos pomidorowy'],
  ['AMERICANA', 20.99, 'Pieczarki, ser mozzarella, pomidory, ziołowy sos pomidorowy'],
  ['PEPPERONI', 26.99, 'Kiełbasa pepperoni, ser mozzarella, ziołowy sos pomidorowy'],
  ['CLASSICA', 26.99, 'Szynka, pieczarki, ser mozzarella, ziołowy sos pomidorowy'],
  ['HAWAJSKA', 25.99, 'Szynka, ser mozzarella, ananas, ziołowy sos pomidorowy'],
  ['CAPRICCIOSA', 24.99, 'Szynka, ser mozzarella, pieczarki, pomidorki koktajlowe, czarne oliwki, ziołowy sos pomidorowy'],
  ['CARBONARA', 28.99, 'Boczek, ser corregio, ser mozzarella, pomidory, pieczarki, cebula, sos biały']
]

restaurants.length.times do |i|
  Restaurant.create(
    name: restaurants[i][0],
    address: restaurants[i][1],
    openning_hours: restaurants[i][2]
  )
end

pizzas.length.times do |i|
  Pizza.create(
    name: pizzas[i][0],
    price: pizzas[i][1],
    ingredients: pizzas[i][2]
  )
end

