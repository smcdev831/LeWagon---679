class CustomersView
  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{customer.name}, ID Number #{index + 1} lives at #{customer.address}"
    end
  end

  def ask_address
    puts "What is the address of the customer?"
    gets.chomp
  end

  def ask_name
    puts "What is the name of the customer?"
    gets.chomp
  end
end
