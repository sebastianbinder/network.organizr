class CreateIpRanges < ActiveRecord::Migration
  def change
    create_table :ip_ranges do |t|
      t.string :name
      t.string :ipbase

      t.timestamps
    end
  end
end
