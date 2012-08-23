examples :applications do
  description <<-MARKDOWN
    The examples shown below are all based on those of
    [Font Awesome](http://fortawesome.github.com/Font-Awesome/#examples)
    itself (many of which are, in turn, based on those of
    [Bootstrap](http://twitter.github.com/bootstrap/base-css.html#icons)).
    However, using font_awesome_rails eliminates a lot of the extraneous markup
    that was necessary in the original versions.
  MARKDOWN

  example :buttons do
    title "Buttons"

    html <<-HTML
      <a class="refresh btn" href="#">Refresh</a>
      <a class="cart btn" href="#">Checkout</a>
      <a class="comment btn" href="#">Comment</a>
      <a class="delete btn" href="#">Delete</a>
      <a class="settings btn" href="#">Settings</a>
      <a class="info btn" href="#">More Info</a>
    HTML

    scss <<-SCSS
      .refresh.btn {
        @include icon(refresh);
      }

      .cart.btn {
        @include icon(shopping-cart);
        @extend %icon-large;
        @extend .btn-success;
      }

      .comment.btn {
        @include icon(comment);
        @extend .btn-large;
        @extend .btn-primary;
      }

      .delete.btn {
        @include icon(trash);
        @extend %icon-large;
        @extend .btn-danger;
      }

      .settings.btn {
        @include icon(cog);
        @extend .btn-small;
      }

      .info.btn {
        @include icon(info-sign);
        @extend .btn-small;
        @extend .btn-info;
      }
    SCSS
  end

  example :button_groups do
    title "Button groups"

    html <<-HTML
      <div class="align toolbar">
        <button class="left" type="button"></button>
        <button class="center" type="button"></button>
        <button class="right" type="button"></button>
        <button class="justify" type="button"></button>
      </div>
    HTML

    scss <<-SCSS
      .align.toolbar {
        @extend .btn-group;

        button {
          @extend .btn;
          @include icon-style {
            margin: 0;
          }
        }

        .left { @include icon(align-left); }
        .center { @include icon(align-center); }
        .right { @include icon(align-right); }
        .justify { @include icon(align-justify); }
      }
    SCSS
  end

  example :button_dropdowns do
    title "Button dropdowns"

    html <<-HTML
      <div class="user btn-group">
        <a class="btn" href="#">User</a>
        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#"></a>
        <ul class="dropdown-menu">
          <li><a class="edit" href="#">Edit</a></li>
          <li><a class="delete" href="#">Delete</a></li>
          <li><a class="ban" href="#">Ban</a></li>
          <li class="divider"></li>
          <li><a class="admin" href="#">Make admin</a></li>
        </ul>
      </div>
    HTML

    scss <<-SCSS
      .user.btn-group {
        .btn {
          @include icon(user);
          @extend .btn-primary;
        }

        .dropdown-toggle {
          @include icon(caret-down);
        }

        .edit { @include icon(pencil); }
        .delete { @include icon(trash); }
        .ban { @include icon(ban-circle); }
      }
    SCSS
  end

  example :form_inputs do
    title "Prepended form inputs"

    html <<-HTML
      <form>
        <div class="email input">
          <span class="add-on"></span><input type="text" placeholder="Email address">
        </div>
        <div class="password input">
          <span class="add-on"></span><input type="password" placeholder="Password">
        </div>
      </form>
    HTML

    scss <<-SCSS
      .input {
        @extend .input-prepend;

        .add-on {
          @include icon-style {
            margin: 0 0.25em;
          }
        }
      }

      .email .add-on {
        @include icon(envelope);
      }

      .password .add-on {
        @include icon(key);
      }
    SCSS
  end

  example :navigation do
    title "Navigation"

    html <<-HTML
      <nav class="sidebar">
        <ul>
          <li class="active"><a class="home" href="#">Home</a></li>
          <li><a class="library" href="#">Library</a></li>
          <li><a class="applications" href="#">Applications</a></li>
          <li><a class="settings" href="#">Settings</a></li>
        </ul>
      </nav>
    HTML

    scss <<-SCSS
      nav.sidebar {
        @extend .well;
        padding: 8px 0;

        ul {
          @extend .nav;
          @extend .nav-list;
        }

        .home { @include icon(home); }
        .library { @include icon(book); }
        .applications { @include icon(pencil); }
        .settings { @include icon(cogs); }
      }
    SCSS
  end

  example :tabs do
    title "Tabs"

    html <<-HTML
      <nav class="tabs">
        <ul>
          <li class="active"><a class="home" href="#">Home</a></li>
          <li><a class="library" href="#">Library</a></li>
          <li><a class="applications" href="#">Applications</a></li>
          <li><a class="settings" href="#">Settings</a></li>
        </ul>
      </nav>
    HTML

    scss <<-SCSS
      nav.tabs {
        ul {
          @extend .nav;
          @extend .nav-tabs;
        }

        .home { @include icon(home); }
        .library { @include icon(book); }
        .applications { @include icon(pencil); }
        .settings { @include icon(cogs); }
      }
    SCSS
  end

end
