class UsersController < ApplicationController
  def index
    render User.all.to_json
  end

  def show
    if params[:id].to_i < 150
      render User.all.select { |user|  user.id == params[:id].to_i  }.to_json
    else
      render "ID out of range - not found" , status: "404 NOT FOUND"
    end
  end
end
