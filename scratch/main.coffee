
example 'timer', (done) ->
  Rx.Observable.timer(1000, 1000).take(5)
    .subscribe(
      (x) -> print x,
      null,
      done,
    )

example 'range', (done) ->
  Rx.Observable.range(9, 5)
    .subscribe(
      (x) -> print x,
      null,
      done,
    )

example 'fromArray', (done) ->
  Rx.Observable.fromArray(['a', 'b', 'c'])
    .subscribe(
      (x) -> print x,
      null,
      done,
    )
