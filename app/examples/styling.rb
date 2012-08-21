examples :styling do

  example :content_blocks do
    title "Content blocks"

    description <<-MARKDOWN
      All of the mixins that add icons can optionally take a
      [content block](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#mixin-content)
      with styles to be applied to the icon.
    MARKDOWN

    html <<-HTML
      <span class="content-block-style">thundercats</span>
    HTML

    scss <<-SCSS
      .content-block-style {
        @include icon(facebook-sign) {
          color: #3B5998;
        }
      }
    SCSS
  end

  example :icon_style do
    title "`icon-style`"
    label :mixin

    description <<-MARKDOWN
      Applies styles (given in a content block) to all icons.
    MARKDOWN

    html <<-HTML
      <span class="icon-before">polaroid</span>
      <span class="icon-after">gastropub</span>
    HTML

    scss <<-SCSS
      span {
        @include icon-style {
          color: red;
        }
      }

      .icon-before {
        @include icon-before(flag);
      }

      .icon-after {
        @include icon-after(bullhorn);
      }
    SCSS
  end

  example :icon_before_style do
    title "`icon-before-style`"
    label :mixin

    description <<-MARKDOWN
      Applies styles (given in a content block) to all icons in `::before` pseudoelements.
    MARKDOWN

    html <<-HTML
      <span class="icon-before">quinoa</span>
      <span class="icon-after">fixie</span>
    HTML

    scss <<-SCSS
      span {
        @include icon-before-style {
          color: orange;
        }
      }

      .icon-before {
        @include icon-before(magic);
      }

      .icon-after {
        @include icon-after(pushpin);
      }
    SCSS
  end

  example :icon_after_style do
    title "`icon-after-style`"
    label :mixin

    description <<-MARKDOWN
      Applies styles (given in a content block) to all icons in `::after` pseudoelements.
    MARKDOWN

    html <<-HTML
      <span class="icon-before">vegan</span>
      <span class="icon-after">biodiesel</span>
    HTML

    scss <<-SCSS
      span {
        @include icon-after-style {
          color: green;
        }
      }

      .icon-before {
        @include icon-before(headphones);
      }

      .icon-after {
        @include icon-after(leaf);
      }
    SCSS
  end

end
