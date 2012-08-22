jQuery ($) ->
  prettyPrint()

  activate = (element) -> element.addClass "active"
  deactivate = (element) -> element.removeClass "active"

  overlay = $("#overlay")
  container = $(".container", overlay)
  row = $(".row", overlay)

  show = (example) ->
    activate example
    activate overlay

    overlay.css "height", "#{overlay.parent().height()}px"

    gutter = parseInt(row.css("padding-top"))
    offset = container.offset()
    offset.top = example.offset().top - gutter
    container.offset offset

    source = $(".source", example).clone()
    source.toggleClass "pull-right", example.is(":nth-child(2n+1)")

    $(".source", row).replaceWith source

  hide = ->
    deactivate $("#overlay")
    deactivate $(".active.example")

  $(".example").click ->
    example = $(this)
    show example unless example.is(".active")

  $("#overlay").click (event) -> hide() if $(event.target).is("#overlay")
  $(document).keydown (event) -> hide() if event.which == 27 # ESC
