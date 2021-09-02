import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store {
  @observable
  int count = 0;

  @observable
  int count2 = 0;

  @action
  void increment() {
    count++;
    count2 = count * 2;
  }
}
