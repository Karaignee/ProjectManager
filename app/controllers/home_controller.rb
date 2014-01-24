class HomeController < ApplicationController
  def index
    @projectJSON = Project.all.to_json
  end
end
