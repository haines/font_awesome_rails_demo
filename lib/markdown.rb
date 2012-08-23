Object.send :remove_const, :Markdown

module Markdown
  extend self

  def render(markdown)
    renderer.render(markdown)
  end

  def renderer
    @renderer ||= Redcarpet::Markdown.new PrettyPrintedHTML, autolink: true, fenced_code_blocks: true, no_intra_emphasis: true
  end
end

class PrettyPrintedHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    %{<pre><code class="prettyprint lang-#{language}">#{ActiveSupport::SafeBuffer.new << code}</code></pre>}
  end
end
