class Species < ActiveRecord::Base
  has_many :sightings

  validates :name, :presence => true

  def date_range(attributes)
    self.sightings.where(:date => attributes[:start_date]..attributes[:end_date])
  end
end
