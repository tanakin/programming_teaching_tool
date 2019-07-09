class UsersController < ApplicationController
  def show
    gon.understand = Understanding.understanding_chart_data(current_user)
    gon.labels = ['理解した', '再復習', '未履修']

    replay = Understanding.replay_list(current_user)
    not_read = Understanding.not_read_list(current_user)

    @text_replay = Understanding.text_find(replay)
    @text_not_read = Understanding.text_find(not_read).sort

  end
end