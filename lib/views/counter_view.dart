import 'package:flutter/material.dart';
import 'package:study_counter_flutter/components/FloatAction/main.dart';
import 'package:study_counter_flutter/controllers/counter_controller.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(title: 'Meu contador'),
    );
  }
}

class CounterPage extends StatefulWidget {
  CounterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Voce precionou o botao',
              ),
              Text(
                '${controller.getCounter()}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatAction(
              iconColor: Colors.green,
              icon: Icon(Icons.add),
              onPress: () {
                setState(() {
                  controller.increment();
                });
              },
            ),
            FloatAction(
              iconColor: Colors.red,
              icon: Icon(Icons.remove),
              onPress: () {
                setState(() {
                  controller.decrement();
                });
              },
            ),
          ],
        ));
  }
}
