# customer_spec.rb

require 'rspec'
require_relative '../app/services/Customer'

describe Customer do
  describe '#myFunction' do
    it 'returns the sum of two numbers' do
      customer = Customer.new
      result = customer.myFunction(2, 3)
      expect(result).to eq(5)
    end
  end
end