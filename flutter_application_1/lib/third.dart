import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // ✅ Correct
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0; // ✅ fixed spelling

  void incrementCounter() {
    setState(() {
      counter++;
      print(counter);
    }); // ✅ fixed spelling
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: const Color.fromARGB(255, 10, 152, 247),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Push Up",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              counter.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter, // ✅ fixed spelling
        child: Icon(Icons.add),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {

  // int counter = 0;  // ✅ fixed spelling

  // void incrementCounter() {
  //   counter++;
  //   print(counter);  // ✅ fixed spelling
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Flutter App"),
  //       backgroundColor: const Color.fromARGB(255, 10, 152, 247),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text(
  //             "Push Up",
  //             style: TextStyle(fontSize: 20),
  //           ),
  //           Text(
  //             counter.toString(),
  //             style: Theme.of(context).textTheme.displayLarge,
  //           ),
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: incrementCounter,  // ✅ fixed spelling
  //       child: Icon(Icons.add),
  //     ),
  //   );
  // }
// }
