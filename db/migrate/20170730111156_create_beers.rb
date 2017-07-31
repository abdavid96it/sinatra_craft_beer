class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string   :name
      t.string   :manufacturer
      t.references   :category
      t.string   :country
      t.string   :price
      t.string   :description

      t.timestamps null: false
    end
  end
end
