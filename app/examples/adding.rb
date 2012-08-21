examples :adding do

  example :icon_before do
    title "`icon-before($name)`"
    label :mixin

    description <<-MARKDOWN
      Adds the named icon to the including element's `::before` pseudoelement.
    MARKDOWN

    html <<-HTML
      <span class="icon-before">wayfarers</span>
    HTML

    scss <<-SCSS
      .icon-before {
        @include icon-before(glass);
      }
    SCSS
  end

  example :icon_after do
    title "`icon-after($name)`"
    label :mixin

    description <<-MARKDOWN
      Adds the named icon to the including element's `::after` pseudoelement.
    MARKDOWN

    html <<-HTML
      <span class="icon-after">mixtape</span>
    HTML

    scss <<-SCSS
      .icon-after {
        @include icon-after(cog);
      }
    SCSS
  end

  example :icon do
    title "`icon($name)`"
    label :mixin

    description <<-MARKDOWN
      Shorthand for `icon-before`.
    MARKDOWN

    html <<-HTML
      <span class="icon">scenester</span>
    HTML

    scss <<-SCSS
      .icon {
        @include icon(bolt);
      }
    SCSS
  end

  example :icons do
    title "`icon($before, $after)`"
    label :mixin

    description <<-MARKDOWN
      Adds the named icons to the including element's `::before` and `::after` pseudoelements.
    MARKDOWN

    html <<-HTML
      <span class="icons">sriracha</span>
    HTML

    scss <<-SCSS
      .icons {
        @include icon(thumbs-up, thumbs-down);
      }
    SCSS
  end

end
