// Generated by CoffeeScript 1.10.0
(function() {
  example('fromArray', function(done) {
    return Rx.Observable.fromArray([11, 23, 34, 45, 56]).subscribe(function(x) {
      return print(x);
    }, null, done);
  });

  example('range', function(done) {
    return Rx.Observable.range(103, 6).subscribe(function(x) {
      return print(x);
    }, null, done);
  });

  example('generateWithRelativeTime', function(done) {
    var todo;
    todo = ['fix car', 'buy food', 'take meds', 'walk dog', 'order out', 'pick up dry cleaning'];
    return Rx.Observable.generateWithRelativeTime(0, function(i) {
      return i < todo.length;
    }, function(i) {
      return i + 1;
    }, function(i) {
      return todo[i];
    }, function(i) {
      return 1000;
    }).subscribe(function(x) {
      return print(x);
    }, null, done);
  });

}).call(this);
