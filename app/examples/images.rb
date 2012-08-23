examples :images do
  description <<-MARKDOWN
    font_awesome_rails can produce SVG images of the icon characters, which
    might be useful if you are trying to apply an icon to an element that
    doesn't have children (e.g. form inputs), or if you want to subset the font.
    Note that this is [not supported in IE < 9](http://caniuse.com/#search=svg).

    Producing the SVG uses the [nokogiri](http://nokogiri.org/) gem, so make sure
    you add it to your Gemfile before you try anything in this section.
  MARKDOWN

  example :icon_image do
    title "`icon-image($name)`"
    label :mixin

    description <<-MARKDOWN
      Sets the background image to the named icon.
    MARKDOWN

    html <<-HTML
      <div class="speech">mustache</div>
    HTML

    scss <<-SCSS
      .speech {
        @include icon-image(comment-alt);
        background-size: 120px;
        width: 120px;
        height: 66px;
        padding-top: 30px;
        text-align: center;
      }
    SCSS
  end

  example :icon_image_style do
    title "`icon-image($name, $style)`"
    label :mixin

    description <<-MARKDOWN
      Sets the background image to the named icon with the specified style. `$style` is a list
      of [SVG styling properties](http://www.w3.org/TR/SVG/styling.html#SVGStylingProperties)
      (notably `fill` changes the color) which are applied to the icon's path element.
    MARKDOWN

    html <<-HTML
      <div class="heart">helvetica</div>
    HTML

    scss <<-SCSS
      .heart {
        @include icon-image(heart, "fill: red");
        color: white;
        background-size: 120px;
        width: 120px;
        height: 66px;
        padding-top: 30px;
        text-align: center;
      }
    SCSS
  end
end
