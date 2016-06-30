class Post
  @@all = []
  attr_accessor :id, :title, :author, :body, :published

  def intialize (id, title, author, body, published)
    @id = id
    @title = title
    @author = author
    @body = body
    @published = published
  end

  def to_json(json_arg = nil)
    {
      id: @id,
      title: @title,
      author: @author,
      body: @body,
      published: @published
    }.to_json
  end

  def Post.all
    @@all
  end
end
