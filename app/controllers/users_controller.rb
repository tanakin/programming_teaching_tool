class UsersController < ApplicationController
  def show
    gon.understand = Understanding.understanding_chart_data(current_user)
    gon.labels = ['理解した', '再復習', '未履修']
  end
end