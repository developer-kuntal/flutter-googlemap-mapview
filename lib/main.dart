import 'package:flutter/material.dart';
import 'package:map_view/map_view.dart';

var myKey = "AIzaSyD5LPQDM1bpAs6hxHa4CH1R7w3rzQ6FTKE";

void main() {
  MapView.setApiKey(myKey);
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Map',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Google Map'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: , 
    );
  }
}
