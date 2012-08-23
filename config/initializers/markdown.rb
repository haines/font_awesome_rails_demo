require "markdown"

MarkdownRails.configure do |config|
  config.render do |markdown|
    Markdown.render markdown
  end
end
