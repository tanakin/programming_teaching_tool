class Understanding < ApplicationRecord
  belongs_to :user
  belongs_to :text

  def self.update_understandings(text_id, user, understand)
    understanding = Understanding.find_by(text_id: text_id, user_id: user.id)
    unless understanding
      understanding = user.understandings.build(text_id: text_id)
    end
    understanding.understand = understand
    understanding.save
  end

end
