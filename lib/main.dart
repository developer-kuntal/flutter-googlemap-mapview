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

  MapView mapView = new MapView();
  List<Marker> markers = <Marker> [

  ];
  
  displayMap() {
   mapView.show(new MapOptions(
     mapViewType: MapViewType.normal,
     initialCameraPosition: new CameraPosition(new Location(35.22, -101.83), 15.0),
     showUserLocation: false,
     title: 'Google Map'
   )); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Center(
        child: Container(
          child: RaisedButton(
            child: Text("Tap me"),
            color: Colors.blue,
            textColor: Colors.white,
            elevation: 7.0,
            onPressed: displayMap(),
          ),
        ),
      ), 
    );
  }
}
