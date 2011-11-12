class CreateSwitches < ActiveRecord::Migration
  def change
    create_table :switches do |t|
      t.string :ipaddress
      t.string :address
      t.string :status, :default => 'offline'

      t.timestamps
    end
  end
end
