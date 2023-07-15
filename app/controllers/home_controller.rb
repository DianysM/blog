require_relative '../services/Customer'
class HomeController < ApplicationController
  def index
    cust = Customer.new
    @aa = cust.myFunction(3,2)
  end
end
