import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body:
      new Container(
        child:
        Text(
          "Hello Flutter！",
          style: new TextStyle(fontSize:32.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto"),
        ),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}