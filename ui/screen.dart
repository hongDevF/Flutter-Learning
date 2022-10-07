import 'package:flutter/material.dart';

void main() {
  runApp(uiApp());
}

class uiApp extends StatelessWidget {
  const uiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'TEST',
          style: TextStyle(
            fontFamily: "khmerMoul",
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.redAccent,
            onPressed: () {},
          ),
          // add more IconButton
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),
      // appBar: AppBar,
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
            ),
            onPressed: () {},
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}
