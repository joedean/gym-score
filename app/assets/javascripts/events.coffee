calc_overall_score = (_old_score, _new_score, _overall_score) ->
   _overall_score = parseFloat(_overall_score).toFixed(1)
   _new_score = parseFloat(_new_score).toFixed(1)
   _old_score = parseFloat(_old_score).toFixed(1)
   result = parseFloat(_overall_score) + (parseFloat(_new_score) - parseFloat(_old_score))
   parseFloat(result).toFixed(1)

$ ->
  $(".best_in_place").best_in_place()

  $(".best_in_place").bind("ajax:success", ->
    overall_score = $("#overall-score")
    new_score = $(this).data().bipValue
    old_score = $(this).data().bipOriginalContent
    old_overall_score = overall_score.text()
    overall_score.text(calc_overall_score(old_score, new_score, old_overall_score))
    return true)
  return
