class CreateIpRanges < ActiveRecord::Migration
  def change
    create_table :ipranges do |t|
      t.string :name
      t.string :ipbase

      t.timestamps
    end
  end
end
