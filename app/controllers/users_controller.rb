class UsersController < ApplicationController
  def index
    render User.all.to_json
  end

  def show
    if (1..User.all.count).include?(params[:id].to_i)
      render User.all.select { |user|  user.id == params[:id].to_i  }.to_json
    else
      render({msg: "ID out of range - not found"}.to_json, status: "404 NOT FOUND")
    end
  end
end
