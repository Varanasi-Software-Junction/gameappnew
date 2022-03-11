import 'package:flutter/material.dart';
import 'gamebutton.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static int counter=0;
  static _MyHomePageState state;
  @override
  _MyHomePageState createState()
  {
    MyApp.state=_MyHomePageState();
    return MyApp.state ;
  }
}

class _MyHomePageState extends State<MyApp> {


  void incrementCounter() {
    setState(() {
MyApp.counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("${MyApp.counter}")),
          body: GameButton()),
    );
  }
}
