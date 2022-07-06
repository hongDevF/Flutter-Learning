import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Telegram"),
        actions: [Icon(Icons.search)],
      ),
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
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://play-lh.googleusercontent.com/I-Yd5tJnxw7Ks8FUhUiFr8I4kohd9phv5sRFHG_-nSX9AAD6Rcy570NBZVFJBKpepmc=w240-h480-rw'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Hang Senghong"),
              ],
            ),
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("contact"),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("call"),
            leading: Icon(Icons.call),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
              width: 1,
              color: Colors.black,
            ))),
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("near group"),
            leading: Icon(Icons.group),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
