class Example
  def initialize(id, &block)
    self.id = id
    instance_eval &block
  end

  attr_reader :id
  def id=(value)
    @id = "example-#{value.to_s.dasherize}"
  end

  def title(value=nil)
    return @title if value.nil?
    self.title = value
  end
  def title=(value)
    @title = Markdown.render("#### #{value}")
  end

  def label(value=nil)
    return @label if value.nil?
    self.label = value
  end
  attr_writer :label

  def description(value=nil)
    return @description if value.nil?
    self.description = value
  end
  def description=(value)
    @description = Markdown.render(unindent(value))
  end

  def html(value=nil)
    return @html if value.nil?
    self.html = value
  end
  def html=(value)
    @html = unindent(value)
  end

  def scss(value=nil)
    return @scss if value.nil?
    self.scss = value
  end
  def scss=(value)
    @scss = unindent(value)
  end

  def to_partial_path
    "example"
  end

  protected

  def unindent(value)
    indentation = value[/\A */].size
    value.gsub /^ {#{indentation}}/, ""
  end
end
