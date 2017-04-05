class PagesController < ApplicationController
  def home
  	@contractors = Contractor.all
  	@tasks = Task.all
  end

  def help
  end

  def about
  end

  def choose_role
  end
end
