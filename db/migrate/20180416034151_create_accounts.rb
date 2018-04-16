class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :ssn

      t.timestamps
    end
  end
end
