// ignore_for_file: unused_element, dead_code

import 'package:first_flutter/Telegram/models/photos_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/ImageProfileOfusers.dart';
import 'add_contact_page.dart';

class AddMore extends StatefulWidget {
  @override
  State<AddMore> createState() => _AddMoreState();
}

class _AddMoreState extends State<AddMore> {
  bool isFabvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("New Message"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Row(children: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu_open_rounded),
            ]),
          ),
        ],
      ),
      // FloatAction Button

      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            setState(() => isFabvisible = true);
          } else if (notification.direction == ScrollDirection.reverse) {
            setState(() => isFabvisible = false);
          }
          return true;
        },
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(children: [
            _ListTitle("New Grup", Icons.group),
            _ListTitle("New Secret Chat", Icons.lock),
            _ListTitle("New Channel", Icons.announcement),
            _SideBar(context),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: ImgageList.length,
              itemBuilder: (context, index) {
                return _ShortListUser(ImgageList[index]);
              },
            ),
          ]),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFabvisible,
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddContact(),
              ),
            );
          },
          child: Icon(Icons.add_box_sharp),
        ),
      ),
    );
  }
}

Widget _ListTitle(String title, IconData icons) {
  return ListTile(
    leading: Icon(icons),
    title: Text(title),
  );
}

Widget _SideBar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.grey.shade600,
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
      child: Text("Shorted by last seen times"),
    ),
  );
}

Widget _ShortListUser(UserModel item) {
  return Card(
    color: Colors.grey,
    elevation: 0,
    child: ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(item.image),
      ),
      title: Text(item.title_name),
      subtitle: Text(item.status),
    ),
  );
}
