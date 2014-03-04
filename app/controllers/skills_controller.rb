class SkillsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = current_user
  end

  def save
  end
end
