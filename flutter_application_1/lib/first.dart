import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(
    DevicePreview(
    builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget{
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App'),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: (){},
              ),
            ],
            // flexibleSpace: Image.asset(
            //   "assets/back.jpeg",
            //   fit: BoxFit.cover,
            //   ),
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car, color: Colors.white,), child: Text("Tab 1",style: TextStyle(color: Colors.white),),),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 20.0,
          backgroundColor: Colors.blue,
          ),
          body: TabBarView(
            children: [
              tab1(),
              Center(child: Text('Transit')),
              Center(child: Text('Bike')),
            ],
          ),
      ),
    );
  }
} 

Widget tab1(){
  return Container(
    child: Center(
      child: Text('Super Car'),
    ),
  );
}