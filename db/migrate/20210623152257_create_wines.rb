class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :title
      t.string :country
      t.integer :rating
      t.text :opinion
      t.integer :price

      t.timestamps
    end
  end
end
