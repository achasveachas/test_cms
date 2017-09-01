class AddBirthdayToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :birthday, :date
  end
end
