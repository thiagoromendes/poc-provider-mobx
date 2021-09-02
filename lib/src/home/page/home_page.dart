import 'package:poc/src/home/components/counter.dart';
import 'package:poc/src/shared/components/switch_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [],
      ),
      body: Column(
        children: [
          SwitchThemeApp(),
          Counter(),
        ],
      ),
    );
  }
}
