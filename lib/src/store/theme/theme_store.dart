import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  @observable
  bool isDark = true;

  @action
  void changeTheme(bool? value) => isDark = !isDark;
}
