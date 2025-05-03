import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/secondscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int counter = 0; // ✅ fixed spelling

  // void incrementCounter() {
  //   setState(() {
  //     counter++;
  //     print(counter);
  //   }); // ✅ fixed spelling
  // }

  var items = List<String>.generate(100, (index)=> "Done $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 10,
                obscureText: false,//use this for password
                // keyboardType: TextInputType.number, //use this for number
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 60, 255, 0),
                ),
              ),
            ),
          ],
        )),
    );
  }
}

// body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(items[index]),
//           );
//         },
//       ),

// child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             Container(
//               width: 100,
//               height: 200,
//               color: Colors.white,
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: Colors.grey,
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: Colors.orange,
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: const Color.fromARGB(255, 218, 23, 23),
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: const Color.fromARGB(255, 5, 190, 30),
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: const Color.fromARGB(255, 24, 159, 238),
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: const Color.fromARGB(255, 5, 190, 30),
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: const Color.fromARGB(255, 24, 159, 238),
//             )
//             Container(
//               height: 200,
//               width: 100,
//               color: const Color.fromARGB(255, 5, 190, 30),
//             ),
//             Container(
//               height: 200,
//               width: 100,
//               color: const Color.fromARGB(255, 24, 159, 238),
//             )
//           ],
//         ),


// child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'List View ',
//               style: Theme.of(context).textTheme.titleMedium,
//             ),
//             Container(
//               height: 200,
//               color: Colors.white,
//             ),
//             Container(
//               height: 200,
//               color: Colors.grey,
//             ),
//             Container(
//               height: 200,
//               color: Colors.orange,
//             ),
//           ],
//         ),

// Text(
            //   "Push Up",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   counter.toString(),
            //   style: Theme.of(context).textTheme.displayLarge,
            // ),

// floatingActionButton: FloatingActionButton(
      //   onPressed:(){
      //     Navigator.of(context).push(MaterialPageRoute(
      //       builder: (_){
      //         return Secondscreen('Jithendra');
      //       }
      //     )
      //     );
      //   }, // ✅ fixed spelling
      //   child: Icon(Icons.add),
      // ),