class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      # ids companies and devs
      t.integer :company_id
      t.integer :dev_id
      # t.references :company
      # => company_id
      # t.references :dev
    end  
  end
end
