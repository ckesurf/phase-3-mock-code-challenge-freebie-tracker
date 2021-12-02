class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  #give_freebie(dev, item_name, value)
  def give_freebie(dev, item_name, value)
    # this should also work: Freebie.create(dev_id: dev.id, company_id: self.id)
    Freebie.create(item_name: item_name, value: value, dev: dev, company: self)
  end

  # takes a dev (an instance of the Dev class),
  # an item_name (string),
  # and a value as arguments, and
  # creates a new Freebie instance associated with this company and the given dev

  def self.oldest_company
    # returns the Company instance with the earliest founding year
    # find minimum founding_year
    self.all.order(:founding_year).first

    # Company.minimum(:founding_year) => 1995
    # self.all.min_by { |c| c.founding_year }
  end
end
