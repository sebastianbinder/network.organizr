class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :manufacturer
      t.string :macaddresswifi
      t.string :macaddresslan
      t.string :group
      t.string :ip
      t.boolean :vpn
      t.integer :user_id

      t.timestamps
    end
  end
end
