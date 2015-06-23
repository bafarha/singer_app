class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :user, index: true
    	t.references :product, index:true
    	t.string :body
    	t.integer :rating

    	t.timestamps
    end
  end
end
