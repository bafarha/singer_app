class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :user
    	t.references :product
    	t.string :body
    	t.integer :rating

    	t.timestamps
    end
  end
end
