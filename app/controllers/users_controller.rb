class UsersController < ApplicationController
  def show
    gon.understand = Understanding.understanding_chart_data(current_user)
    gon.labels = ['理解した', '再復習', '未履修']

    @text_replay = Understanding.replay_list(current_user)
    @text_not_read = Understanding.not_read_list(current_user)

  end
end