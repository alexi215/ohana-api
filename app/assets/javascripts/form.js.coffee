jQuery ->
  $('.edit_location').on 'click', '.delete_association', (event) ->
    $(this).prevAll('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('.edit_location').on 'click', '.delete_attribute', (event) ->
    $(this).closest('fieldset').find("input").val('')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('.edit_location').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

  $('.new_location').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()