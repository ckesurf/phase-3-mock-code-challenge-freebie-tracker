class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  # Jeremiah is our dev,
  # pen, hat, hoodie
  # jeremiah.received_one? "pen"
  # => true
  # jeremiah.received_one? "Macbook Pro"
  # => false
  def received_one?(item_name)
    # accepts an item_name (string)
    # and returns true if any of the freebies
    # associated with the dev has that item_name, otherwise returns false
    self.freebies.where(item_name: item_name).exists?
  end

  # accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev; your code should only make the change if the freebie belongs to the dev who's giving it away
  # self = Obie
  # Macbook Pro
  # dev = McKinsey
  # Obie.give_away(McKinsey, Macbook_Pro)
  def give_away(dev, freebie)
    # Only if THEY OWN THE FREEBIE
    # self owns this freebie
    # Obie has two freebies that are macbooks
    # Rodrigos_macbook is a freebie instance

    # Obie.give_away(McKinsey, Rodrigos_macbook)
    # self.id == developer_id_who_owns_this_freebie
    # self.id == dev.id

    # if self.id == freebie.dev_id
    if self == freebie.dev
      # update the freebie with new dev id
      freebie.update(dev_id: dev.id)
    end
    # self.id == freebie.dev_id
  end
end
