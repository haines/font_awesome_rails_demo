module Base
  def description(value=nil)
    return @description if value.nil?
    self.description = value
  end
  def description=(value)
    @description = Markdown.render(unindent(value))
  end

  def to_partial_path
    "examples/#{self.class.name.underscore}"
  end

  protected

  def unindent(value)
    indentation = value[/\A */].size
    value.gsub /^ {#{indentation}}/, ""
  end
end
