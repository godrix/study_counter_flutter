import 'package:study_counter_flutter/models/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
  }

  void increment() {
    model.modifierCounter(1, _add);
  }

  int _add(int number1, int number2) {
    return number1 + number2;
  }

  int _sub(int number1, int number2) {
    return number1 - number2;
  }

  void decrement() {
    if (model.counter > 0) {
      model.modifierCounter(1, _sub);
    }
  }
}
