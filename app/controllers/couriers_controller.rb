# frozen_string_literal: true

# Controller to see the list of Couriers
class CouriersController < ApplicationController
  def index
    @couriers = Courier.all
  end
end
