import 'package:flutter/material.dart';

import '../Telegram/screens/listchat/home_screen.dart';

class MyApi extends StatelessWidget {
  const MyApi({Key? key}) : super(key: key);

  // BuildContext get context => "null";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: _apiBody(),
      drawer: _drawer(),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      title: Text("GET API"),
    );
  }

  Widget _drawer() {
    return Builder(builder: (context) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                // border: BorderRadius.circular(50)
                color: Color.fromARGB(255, 165, 168, 171),
              ),
              child: Text("Decoration"),
            ),
            ListTile(
              title: Text("test"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home_screen()),
                );
              },
            )
          ],
        ),
      );
    });
  }

  Widget _apiBody() {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text("test"),
            width: 4000,
            height: 200,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
