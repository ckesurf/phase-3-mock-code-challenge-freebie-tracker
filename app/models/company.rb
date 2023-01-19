class Company < ActiveRecord::Base
  has_many :freebies 
  has_many :devs, through: :freebies

  # Company#give_freebie(dev, item_name, value)
  # takes a dev (an instance of the Dev class), an item_name (string), and a value as arguments, and creates a new Freebie instance associated with this company and the given dev

  # Let's say the company is amazon
  # Amazon gives a freebie (hat, $10) to Mr. Meseeks
  def give_freebie(dev, item_name, value)
    Freebie.create(
      item_name: item_name, 
      value: value, 
      dev: dev, 
      company: self)
  end

#   Company.oldest_company
# returns the Company instance with the earliest founding year
  def self.oldest_company
    # .order
    Company.order(:founding_year).first

    # .where, .find_by
    # .minimum
    Company.where('founding_year = ?', Company.minimum(:founding_year)).first

    # or
    minimum_year = Company.minimum(:founding_year)
    Company.where('founding_year = ?', minimum_year).first
    # or Company.find_by(founding_year: minimum_year)

    # .min_by
    Company.all.min_by { |c| c.founding_year }
  end

end

