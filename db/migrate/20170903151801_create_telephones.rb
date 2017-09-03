class CreateTelephones < ActiveRecord::Migration[5.1]
  def change
    create_table :telephones do |t|
      t.string :number
      t.belongs_to :contact, foreign_key: true
      t.boolean :default
      t.string :location

      t.timestamps
    end
  end
end
