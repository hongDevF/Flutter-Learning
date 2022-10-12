import 'package:first_flutter/Telegram/screens/util/list_view.dart';
import 'package:flutter/material.dart';

import 'util/my_profile_page.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("TATATA"),
        actions: [
          GestureDetector(
            onTap: () => {print("has been clicked !")},
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
              ),
            ),
          )
        ],
      ),
      body: List_View(),
      drawer: _buldDrawer(),
    );
  }

  Widget _buldDrawer() {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey),
            child: GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                )
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Hang Senghong"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
