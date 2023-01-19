class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(
      item_name: item_name, 
      value: value, 
      dev: dev, 
      company: self)
  end

  def self.oldest_company
    Company.order(:founding_year).first
    
    # earliest_year = Company.minimum(:founding_year)
    # Company.find_by(founding_year: earliest_year)

    # Company.all.min_by { |c| c.founding_year }
  end
end
