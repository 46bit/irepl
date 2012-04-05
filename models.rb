class Article
  attr_reader :path
  attr_reader :file
  attr_reader :name
  attr_reader :content
  
  def initialize path
    path = "content/#{path.to_s}.md" if path.class == Symbol
    
    @path = path
    @file = File.basename path
    parse_markdown
  end
  
  def url
    @path.sub("content", "").sub(".md", "") + "/"
  end
  
  def date
    nil
  end
  
  def parse_markdown
    rendered = md(@path).lines.to_a
    @name = rendered.shift.gsub(/<\/?h1>/, "").sub("\n", "")
    @content = rendered.join "\n"
  end
end