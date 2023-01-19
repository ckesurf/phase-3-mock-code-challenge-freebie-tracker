class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.any? { |f| f.item_name == item_name }
  end

  def give_away(dev, freebie)
    # rick
    binding.pry
    # check if actually owns it!
    if freebie.dev == self
      # give it away
  
      freebie.dev = dev
      freebie.save 
      # or
      # freebie.update()
    end



  end
end
