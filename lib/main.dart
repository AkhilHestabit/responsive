import 'package:flutter/material.dart';


import 'responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData( primarySwatch: Colors.blue,),
      home: HomePage()
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({key = Key, required this.title}) : super(key: key);
  final String title;

  // user defined function
   _showDialog(BuildContext context) {
    // return object of type Dialog return AlertDialog(
    return AlertDialog(
    title: const Text("Message"),
    content: const  Text("Hello World"),
    actions: <Widget>[
    FlatButton(
    child: const Text("Close"),
    onPressed: () {
    Navigator.of(context).pop();
    },
    ),
    ],
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title),),
      body: Center(
          child: GestureDetector(
              onTap: () {
                _showDialog(context);
              },
              child: Text( 'Hello World', )
          )
      ),
    );
  }
}