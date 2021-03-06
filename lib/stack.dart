import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _stackData = <Widget>[
    Container(
      color: Colors.red,
      width: 200.0,
      height: 200.0,
      child:Text(
        "One",
        style: new TextStyle(fontSize:32.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),

    Container(
      color: Colors.green,
      width: 200.0,
      height: 200.0,
      child:Text(
        "wo",
        style: new TextStyle(fontSize:32.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),

    Container(
      color: Colors.blue,
      width: 200.0,
      height: 200.0,
      child:Text(
        "Three",
        style: new TextStyle(fontSize:32.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body: Stack(
          children: _stackData
      ),

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android),
          onPressed: fabPressed),
    );
  }

  void fabPressed(){
    setState((){
      _stackData.insert(0,_stackData.removeLast());
    });
  }
}