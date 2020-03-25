class AddCourierToPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :courier, foreign_key: true
  end
end
