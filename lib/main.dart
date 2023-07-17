import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(140),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Tap "-" to decrement',
                ),
                CounterWidget(),
                Text(
                  'Tap "+" to increment',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(
                  () {
                    _count--;
                  },
                );
              },
            ),
          ),
          Container(
            child: Text(
              "$_count",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
