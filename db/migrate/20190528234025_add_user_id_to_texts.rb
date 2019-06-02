class AddUserIdToTexts < ActiveRecord::Migration[5.2]
  def change
    add_reference :texts, :user, foreign_key: true
  end
end
