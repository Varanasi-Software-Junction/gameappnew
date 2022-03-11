import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gameapp/main.dart';
class GameButton extends StatefulWidget {
  @override
  _GameButtonState createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  int _counter = 0;
String caption="0";
void setData()
{
  setState(()
      {
        _counter++;
        caption="$_counter";
        print(_counter);
        MyApp.state.incrementCounter();
      }
  );
}
  @override
  Widget build(BuildContext context) {
    return FlatButton(
     child: Text(caption),
      onPressed: (){
       setData();
       print("Hello");
    }
      ,
    );
  }
}
