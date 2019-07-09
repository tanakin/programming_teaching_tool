class UsersController < ApplicationController
  def show
    # understandings = Understanding.where('user_id = ?', current_user.id)
    understandings = current_user.understandings
    understand = understandings.pluck(:understand)
    true_count = understand.count(true)
    false_count = understand.count(false)
    not_read_count = Text.count - (true_count + false_count)

    gon.understand = [true_count, false_count, not_read_count]
    gon.labels = ['理解した', '再復習', '未履修']
  end
end