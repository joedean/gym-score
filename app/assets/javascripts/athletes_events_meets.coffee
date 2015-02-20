round_number = (number, decimals) ->
  new_number = new Number(number+'').toFixed(parseInt(decimals));
  parseFloat(new_number)

$ ->
  $(".best_in_place").best_in_place()

  $(".best_in_place").bind("ajax:success", ->
    if $(this).data().bipAttribute == "score"
      $diff_result = (+$(this).data().bipValue) - (+$(this).data().bipOriginalContent)
      $result = (+$("#overall-score").text()) + (+$diff_result)
      $("#overall-score").text(round_number($result, 1))
    true)

  return