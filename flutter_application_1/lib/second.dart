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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: const Color.fromARGB(255, 247, 10, 10),
      ),
      body: Container(
        height: 200,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          //Coloumn
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Text 01",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Text 02",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Text 03",
              style: TextStyle(fontSize: 20),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text 01",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Text 02",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Text 03",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter App"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Container(
//         // margin: EdgeInsets.all(10),
//         padding: EdgeInsets.all(20),
//         height: 200,
//         width: double.infinity,
//         color: Colors.blue,
//         child: Text('Flutter App'),
//       ),
//     );
//   }
// }