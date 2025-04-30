import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        height: 200,
        width: double.infinity,
        color: Colors.blue,
        child: Text('Flutter App'),
      ),
    );
  }
}