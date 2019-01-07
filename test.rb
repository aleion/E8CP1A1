def create_hash_prod
  prod_array = []
file = File.open('productos.txt', 'r') 
line = file.readlines
file.close

line.each do |i|
  p i
  products = {}
  prod = i.split(', ').map(&:chomp)
  products[:product] = prod[0]
  products[:stock] = prod[1..3]
  prod_array << products
  end
  prod_array
end

p create_hash_prod