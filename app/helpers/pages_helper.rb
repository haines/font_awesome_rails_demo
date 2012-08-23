module PagesHelper
  def examples(title, id)
    render Examples.load(id), title: title, id: id
  end

  def section(title, id, &content)
    add_nav_item title, id

    content_tag(:section, id: id) do
      content_tag(:header) do
        content_tag :h1, title
      end <<
      capture(&content)
    end
  end

  def add_nav_item(title, id)
    nav_items << content_tag(:li, link_to(title, "##{id}"))
  end

  def nav_items
    @nav_items ||= [].tap do |items|
      def items.to_s
        join.html_safe
      end
    end

  end
end
