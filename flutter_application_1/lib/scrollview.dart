import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/secondscreen.dart';

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
        title: Text(
          "Flutter App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.brightness_6_outlined),
              title: Text("Brightness Auto"),
              subtitle: Text("Adjust screen brightness automatically"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Change Wallpaper"),
              subtitle: Text("Select a new wallpaper image"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.wifi),
              title: Text("Wi-Fi Settings"),
              subtitle: Text("Manage your Wi-Fi connections"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.bluetooth),
              title: Text("Bluetooth"),
              subtitle: Text("Connect to Bluetooth devices"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.volume_up),
              title: Text("Sound Settings"),
              subtitle: Text("Adjust volume and ringtones"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              subtitle: Text("Manage notification preferences"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Privacy & Security"),
              subtitle: Text("Control app permissions and privacy"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              subtitle: Text("Select your preferred language"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("System Update"),
              subtitle: Text("Check for software updates"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Device"),
              subtitle: Text("View device information"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}