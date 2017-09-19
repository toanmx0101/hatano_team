puts "10 products"
10.times do |n|
	Product.create(product_name: "Ao cu loz ##{n}", describe: "Nhu con cac vay", price: 100, category_id: 1, code: "##{n}");	
end
