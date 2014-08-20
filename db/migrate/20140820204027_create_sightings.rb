class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.belongs_to :species
      t.column :date, :date
      t.column :longitude, :integer
      t.column :latitude, :integer
    end
  end
end
