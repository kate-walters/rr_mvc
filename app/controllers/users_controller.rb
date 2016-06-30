class UsersController < ApplicationController
  def index
    if params[:first_name]
      render User.all.select { |user| user.first_name.downcase.start_with?(params[:first_name].downcase) }.to_json
    elsif params[:limit] && params[:offset]
      render User.all.select { |user| (11..User.all.count).include?(user.id) }.to_json
    else
      render User.all.to_json
    end
  end

  def show
    if (1..User.all.count).include?(params[:id].to_i)
      render User.all.select { |user|  user.id == params[:id].to_i  }.to_json
    else
      render({msg: "ID out of range - not found"}.to_json, status: "404 NOT FOUND")
    end
  end
end

def delete
  
end
