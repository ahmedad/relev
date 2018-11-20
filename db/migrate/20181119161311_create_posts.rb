class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :town
      t.string :region
      t.integer :population
      t.string :supported_sector
      t.text :description
      t.date :when
      t.string :Donar
      t.string :funded
      t.string :beneficiaries
      t.string :status
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
