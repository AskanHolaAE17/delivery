# frozen_string_literal: true

# Controller to see the list of Packages
class PackagesController < ApplicationController

  def create
    @package = Package.new(package_params)
    @package.save
    redirect_to root_path, notice: "Запис про посилку було успiшно створено." 
  end
  
  
  private

  def package_params
    params.require(:package).permit(:courier_id, :tracking_number, :delivery_status)
  end  
  
end
