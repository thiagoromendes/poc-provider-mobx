import 'package:poc/src/store/counter/counter_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late CounterStore counterStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    counterStore = Provider.of<CounterStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 200, 10, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Counter Component',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 50),
                Observer(
                  builder: (_) => Text(
                    '${counterStore.count}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                SizedBox(height: 50),
                Observer(
                  builder: (_) => Text(
                    '${counterStore.count2}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          FloatingActionButton.extended(
            onPressed: counterStore.increment,
            label: Text('Increment'),
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
