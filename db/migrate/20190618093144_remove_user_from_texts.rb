class RemoveUserFromTexts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :texts, :user, foreign_key: true
  end
end
