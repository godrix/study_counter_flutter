class CounterModel {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void incrementModel() {
    _counter++;
  }

  void decrementModel() {
    if (_counter > 0) {
      _counter--;
    }
  }

  void modifierCounter(int valor, Function(int, int) operation) {
    _counter = operation(valor, _counter);
  }
}
