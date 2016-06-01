section 'fromArray'

Rx.Observable.fromArray([1, 2, 3, 4, 5])
  .subscribe((x) -> print(x))

section 'range'

Rx.Observable.range(44, 6)
  .subscribe((x) -> print(x))
