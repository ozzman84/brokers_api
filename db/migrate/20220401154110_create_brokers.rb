class CreateBrokers < ActiveRecord::Migration[6.1]
  def change
    create_table :brokers do |t|
      t.string :name
      t.string :operating_state

      t.timestamps
    end
  end
end
