require [
  'quiz_inputs'
  'quiz_show'
  'quiz_rubric'
  'message_students'
], (inputMethods) ->
  $ ->
    inputMethods.setWidths()
    $('.answer input[type=text]').each ->
      $(this).width(($(this).val().length or 11) * 9.5)

    $(".download_submissions_link").click (event) ->
      event.preventDefault()
      INST.downloadSubmissions($(this).attr('href'))