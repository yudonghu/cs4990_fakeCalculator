import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(




        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'fake Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget buildButton(String buttonText){
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(24.0),
        child: new Text(buttonText),
        onPressed: ()=> {},
        //color: Colors.blueGrey,
        //textColor : Colors.white,
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: new Container (
        child: new Column(children: <Widget>[

          new Text("0"),

          new Expanded(

            child: new Divider(),
          ),


         new Column(children: [
              new Row(children: [
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                    buildButton("/")
              ]),
           new Row(children: [
             buildButton("4"),
             buildButton("5"),
             buildButton("6"),
             buildButton("*")
           ]),
           new Row(children: [
             buildButton("1"),
             buildButton("2"),
             buildButton("3"),
             buildButton("-")
           ]),
           new Row(children: [
             buildButton("0"),
             buildButton("."),
             buildButton("%"),
             buildButton("+")
           ]),
           new Row(children: [
             buildButton("AC"),
             buildButton("=")
           ]),


            ],)
        ],)

      )
    );
  }
}
