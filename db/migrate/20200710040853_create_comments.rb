class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :reply
      t.references :user
      t.references :tweet
      t.timestamps
    end
  end
end
