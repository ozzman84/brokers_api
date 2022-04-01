class Broker < ApplicationRecord
  validates :name, :operating_state, presence: true
  validates :operating_state, length: { is: 2 }

  def self.from_region(region)
    where(operating_state: regions[region])
  end

  def self.regions
    {
      'parific northwest' => ['OR', 'WA'],
      'chicagoland' => ['IL', 'MI', 'WI'],
      'everywhere else' => []
    }
  end
end
