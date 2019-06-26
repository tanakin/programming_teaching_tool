class CreateUnderstandings < ActiveRecord::Migration[5.2]
  def change
    create_table :understandings do |t|
      t.references :user, foreign_key: true
      t.references :text, foreign_key: true
      t.boolean :understand
      
      t.timestamps
    end
  end
end
