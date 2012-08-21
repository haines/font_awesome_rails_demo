examples :styling do

  example :icon_large do
    title "`%icon-large`"
    label :placeholder

    description <<-MARKDOWN
      By default, icons appear at the same size as the element's text. `@extend`ing
      this placeholder increases the icon size by one-third.
    MARKDOWN

    html <<-HTML
      <span class="larger-icon">cardigan</span>
    HTML

    scss <<-SCSS
      .larger-icon {
        @extend %icon-large;
        @include icon(umbrella);
      }
    SCSS
  end

end
