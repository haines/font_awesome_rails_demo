module Markdown
  extend self

  def render(markdown)
    renderer.render(markdown)
  end

  def renderer
    @renderer ||= Redcarpet::Markdown.new HTMLwithPygments, autolink: true, fenced_code_blocks: true
  end
end

class HTMLwithPygments < Redcarpet::Render::HTML
  def block_code(code, language)
    Pygments.highlight(code, lexer: language)
  end
end
