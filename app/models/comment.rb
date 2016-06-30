require 'faker'
class Comment
  @@all = []
  attr_reader :id
  attr_accessor :message, :author, :post_id

  def initialize(message, author, post_id)
    @id = set_id
    @message = message
    @author = author
    @post_id = post_id
  end

  def to_json(json_arg = nil)
    {
      id: @id,
      message: @message,
      author: @author,
      post_id: @post_id
    }.to_json
  end

  def Comment.all
    @@all
  end

  private
  
  def set_id
    $user_id ||= 0
    $user_id += 1
  end
end
