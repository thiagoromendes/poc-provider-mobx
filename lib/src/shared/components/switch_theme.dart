import 'package:poc/src/store/theme/theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SwitchThemeApp extends StatefulWidget {
  @override
  _SwitchThemeAppState createState() => _SwitchThemeAppState();
}

class _SwitchThemeAppState extends State<SwitchThemeApp> {
  late ThemeStore themeStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    themeStore = Provider.of<ThemeStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => SwitchListTile(
          title: Text('SwitchTheme Component',
              style: Theme.of(context).textTheme.caption),
          value: themeStore.isDark,
          onChanged: themeStore.changeTheme),
    );
  }
}
