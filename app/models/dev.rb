class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

#   Dev#received_one?(item_name)
# accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
  def received_one?(item_name)
    freebies.any? { |f| f.item_name == item_name } 
    # freebies.find { |f| f.item_name == item_name } ? true : false
  end

#   Dev#give_away(dev, freebie)
# accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev; your code should only make the change if the freebie belongs to the dev who's giving it away
  def give_away(dev, freebie)
    # changes the freebie's dev to be the given dev;
    # give the freebie to Morty?
    # only make the change if the freebie belongs to the dev who's giving it away
    if freebie.dev == self
      freebie.update(dev: dev)
      # freebie.update(dev_id: dev.id)
      # or
      # freebie.dev = dev 
      # freebie.save
    else 
      'hey! you dont own this!'
    end
  end
end
