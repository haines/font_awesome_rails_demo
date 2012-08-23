**font_awesome_rails** brings the fantastic [Font Awesome](http://fortawesome.github.com/Font-Awesome) iconic font to the Rails asset pipeline, with a bunch of new Sass styles for semantic markup.

Wouldn't be great if instead of

```html
<a class="btn" href="..."><i class="icon-pencil"></i> Edit</a>
```
you could just write

```html
<a class="edit btn" href="...">Edit</a>
```
so that down the line you can restyle your edit links with impunity (and save yourself some keystrokes while you're at it)?

Thanks to the mixins provided by font_awesome_rails, you can!

```scss
.edit.btn {
  @include icon(pencil);
}
```
