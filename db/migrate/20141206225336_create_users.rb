class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.date :date_of_birth
      t.references :school
      t.timestamps
    end
  end
end
