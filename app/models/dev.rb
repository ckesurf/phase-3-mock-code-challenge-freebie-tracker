class Dev < ActiveRecord::Base
  has_many :freebies 
  has_many :companies, through: :freebies

  # Dev#received_one?(item_name)
# accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false

  def received_one?(item_name)
    # all the freebies that belong to this dev instance
    # do any of them have the same item_name?

    # collected all the item names of all the freebies associated with this developer
    binding.pry
    item_names = freebies.map {|e| e.item_name }
    item_names.include?(item_name)

    # freebies.any? { |freebie| freebie.item_name == item_name }
  end


  # Dev#give_away(dev, freebie)
# accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev; your code should only make the change if the freebie belongs to the dev who's giving it away

  def give_away(dev, freebie)
    # only if it belongs to this instance
    # or dev_id
    # or freebie.dev == self
    if freebie.dev.id == self.id
      freebie.update(dev_id: dev.id)
      # freebie.update(dev: dev)
    end
    puts "thief!"
  end

end
