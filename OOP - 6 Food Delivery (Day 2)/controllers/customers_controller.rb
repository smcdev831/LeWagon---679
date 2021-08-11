require_relative "../views/customers_view"
require_relative "../models/customer"

class CustomersController
  attr_accessor :id, :name, :address

  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customers_view = CustomersView.new
  end

  def add
    name = @customers_view.ask_name
    address = @customers_view.ask_address
    customer = Customer.new(name: name, address: address)
    @customer_repository.create(customer)
    display_customers
  end

  def list
    display_customers
  end

  private

  def display_customers
    customer = @customer_repository.all
    @customers_view.display(customer)
  end
end
