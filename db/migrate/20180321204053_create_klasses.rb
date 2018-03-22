class CreateKlasses < ActiveRecord::Migration[5.1]
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :time
      t.string :date
      t.integer :capacity
    end
  end
end
