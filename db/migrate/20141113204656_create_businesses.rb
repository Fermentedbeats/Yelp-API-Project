class CreateBusinesses < ActiveRecord::Migration
  def change
      create_table :businesses do |t|
      t.string :name
      t.string :location
      t.string :category
      t.string :review
      t.string :rating

      t.timestamp
    end
  end
end
