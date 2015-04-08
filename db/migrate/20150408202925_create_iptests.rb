class CreateIptests < ActiveRecord::Migration
  def change
    create_table :iptests do |t|
      t.string :ipaddress

      t.timestamps null: false
    end
  end
end
