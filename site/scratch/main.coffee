observable = Rx.Observable.timer(2000, 1000).take(6)

observable.subscribe(
  (x) ->
    println x,
  Rx.helpers.noop,
  () ->
    println 'Completed'
)
