import 'package:poc/src/store/counter/counter_store.dart';
import 'package:poc/src/store/theme/theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'src/home/page/home_page.dart';

void main() {
  runApp(PoCApp());
}

class PoCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ThemeStore>(create: (_) => ThemeStore()),
        Provider<CounterStore>(create: (_) => CounterStore())
      ],
      child: Consumer<ThemeStore>(
        builder: (_, theme, __) => Observer(
          builder: (_) => MaterialApp(
            title: 'PoC Provider/Mobx',
            theme: ThemeData(
              brightness: theme.isDark ? Brightness.dark : Brightness.light,
              primarySwatch: Colors.blue,
            ),
            home: HomePage(title: 'PoC Provider/Mobx'),
          ),
        ),
      ),
    );
  }
}
