import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0; // 카운터 변수 추가

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Counter', style: TextStyle(fontSize: 25.0)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: incrementCounter,
            child: Icon(Icons.add),
            heroTag: null,
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: decrementCounter,
            child: Icon(Icons.remove),
            heroTag: null,
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: resetCounter,
            child: Icon(Icons.refresh),
            heroTag: null,
          ),
        ],
      ),
    );
  }
}
