class AddNotesToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :notes, :text
  end
end
