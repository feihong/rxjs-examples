section 'fromArray'

Rx.Observable.fromArray([1, 2, 3, 4, 5])
  .subscribe((x) -> print(x))

section 'range'

Rx.Observable.range(44, 6)
  .subscribe((x) -> print(x))

section 'generateWithRelativeTime'

todo = ['fix car', 'buy food', 'take meds', 'walk dog', 'order out', 'pick up dry cleaning']

Rx.Observable.generateWithRelativeTime(
  0,
  (i) -> i < todo.length,
  (i) -> i + 1,
  (i) -> todo[i],
  (i) -> 1000)
  .subscribe((x) -> print(x + ', '))
