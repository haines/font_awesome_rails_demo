module PagesHelper
  def examples(title, id)
    render Examples.load(id), title: title, id: id
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
