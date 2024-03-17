class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  def alphabetized
    @customers = Customer.order(:full_name)
  end
  def missing_email
    # Nice use of arrays here to build the SQL query.
    @customers = Customer.where.not(email: [nil, ''])
  end
end
