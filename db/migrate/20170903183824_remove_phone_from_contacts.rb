class RemovePhoneFromContacts < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :phone, :string
  end
end
