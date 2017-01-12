$ ->
  $(document).on 'change', '.platforms_select', (evt) ->
    $.ajax 'getreports',
      type: 'GET'
      dataType: 'script'
      data: {
        platform_id: $(".platforms_select option:selected").val()
             }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic platform selected")
