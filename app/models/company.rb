require 'pry'
class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

#   Company#give_freebie(dev, item_name, value)
# takes a dev (an instance of the Dev class), an item_name (string), and a value as arguments, and creates a new Freebie instance associated with this company and the given dev

  def give_freebie(dev, item_name, value)
    # Create new freebie instance
    Freebie.create(item_name: item_name, value: value, dev: dev, company: self)
    # Freebie.create(item_name: item_name, value: value, dev_id: dev.id, company_id: self.id)
  end

#   Company.oldest_company
# returns the Company instance with the earliest founding year
  def self.oldest_company
    # "#{Company.find(4)}"
    binding.pry
    self.order(:founding_year).first
    # order(:founding_year).first
    # self.sort_by(&:founding_year)
    # self.all.min_by(&:founding_year)
  end

end
