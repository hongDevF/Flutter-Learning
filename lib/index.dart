// import 'dart:html';

import 'package:flutter/material.dart';

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
            // const DrawerHeader(
            //     decoration: BoxDecoration(
            //       color: Colors.blue,
            //     ),
            //     child: Text("Header")),

            ListTile(
              leading: Icon(
                Icons.home,
              ),
              trailing: Icon(Icons.navigate_next),
              title: const Text('home'),
              onTap: () {
                Navigator.pop(context);
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
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
          child: Text(
            "កូនខ្មែរ",
            style: TextStyle(fontFamily: "khmerMoul", fontSize: 34),
          ),
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.remove.bg%2F&psig=AOvVaw3z0GqGd1GOBqyXaER6Voeh&ust=1652248240161000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCNj4h72e1PcCFQAAAAAdAAAAABAD"),
              fit: BoxFit.cover,
              alignment: Alignment(-0.8, 0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.5),
                offset: Offset(20, 20),
                blurRadius: 10,
                spreadRadius: 10,
              ),
              BoxShadow(
                color: Colors.orange.withOpacity(0.6),
                offset: Offset(5, 5),
                blurRadius: 10,
                spreadRadius: 10,
              )
            ]),
      ),
    );
  }
}
