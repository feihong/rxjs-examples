example 'fromArray', (done) ->
  Rx.Observable.fromArray([11, 23, 34, 45, 56])
    .subscribe(
      (x) -> print(x),
      null,
      done)

example 'range', (done) ->
  Rx.Observable.range(103, 6)
    .subscribe(
      (x) -> print(x),
      null,
      done)

example 'generateWithRelativeTime', (done) ->
  todo = ['fix car', 'buy food', 'take meds', 'walk dog', 'order out', 'pick up dry cleaning']

  Rx.Observable.generateWithRelativeTime(
    0,
    (i) -> i < todo.length,
    (i) -> i + 1,
    (i) -> todo[i],
    (i) -> 1000)
    .subscribe(
      (x) -> print x,
      null,
      done)
