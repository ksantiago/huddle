class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @successes = Success.all
    @priorities = Priority.all
    @stucks = Stuck.all
  end
end
