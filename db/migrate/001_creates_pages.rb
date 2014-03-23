class CreatesPages < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :firstname
      t.text :lastname
      t.text :email
    end
  end
end
