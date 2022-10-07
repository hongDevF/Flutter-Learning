// import 'dart:html';
import 'package:flutter/material.dart';

import 'facebook/screens/login.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click"),
        backgroundColor: Color.fromARGB(255, 35, 4, 4),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child: Image.asset("assets/images/key1.jpg")),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("home"),
              onTap: () {
                print("Home has clicked");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.telegram,
              ),
              trailing: Icon(Icons.navigate_next),
              title: const Text('home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              trailing: Icon(Icons.navigate_next),
              title: const Text('Go to facebook Login'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.white, size: 36),
        actions: [
          Container(width: 50, height: 20, child: Icon(Icons.settings)),
          Icon(Icons.more_vert),
        ],
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "កូនខ្មែរ",
          style: TextStyle(
            fontFamily: 'KhmerOS',
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.remove.bg%2F&psig=AOvVaw3z0GqGd1GOBqyXaER6Voeh&ust=1652248240161000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCNj4h72e1PcCFQAAAAAdAAAAABAD",
              ),
              fit: BoxFit.fill,
              alignment: Alignment(-0.8, 0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.5),
                // offset: Offset(2/0, 20),
                blurRadius: 10,
                spreadRadius: 10,
              ),
              BoxShadow(
                color: Colors.white,
                // offset: Offset(5, 20),
                blurRadius: 10,
                spreadRadius: 10,
              )
            ]),
      ),
    );
  }
}
