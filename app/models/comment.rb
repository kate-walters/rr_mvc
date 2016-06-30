class Comment
  attr_accessor :id, :message, :author, :post_id

  def initialize(id, message, author, post_id)
    @id = id
    @message = message
    @author = author
    @post_id = post_id
  end
end
