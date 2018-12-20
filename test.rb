
def create_hash_prod
    prod_array = []
  file = File.open('productos.txt', 'r') 
  line = file.readlines
  file.close

  line.each do |i|
    products = {}
    prod = i.split(', ').map(&:chomp)
    products[:product] = prod[0]
    products[:stock] = prod[1..3]
    total_stock = sum_stock(products[:stock])
    products[:total] = total_stock
    prod_array << products
    end
    prod_array
  end

def sum_stock(stocks)
    sum = stocks.inject(0) do |acum, item|
        if item == 'NR'
            acum += 0
        else 
            acum += item.to_i
        end
    end
  sum
end

def stock_per_prod
    products = create_hash_prod
    product_ts = products.each { |i| puts "#{i[:product]} - Stock: #{i[:total]}" }
end

stock_per_prod