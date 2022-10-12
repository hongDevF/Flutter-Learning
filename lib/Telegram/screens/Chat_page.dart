import 'package:first_flutter/Telegram/screens/Contact_Profile.dart';
import 'package:first_flutter/Telegram/screens/util/Message_Letf.dart';
import 'package:first_flutter/Telegram/screens/util/Message_right.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _chatAppBar(context),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("12/02/2022"),
                    ),
                  ],
                ),
              ),
            ),
            MessageRight(),
            MessagesLetf(),
            MessageRight(),
            MessagesLetf(),
            MessageRight(),
            MessagesLetf(),
          ]),
        ),
      ),
    );
  }
}

AppBar _chatAppBar(context) {
  return AppBar(
    backgroundColor: Colors.black,
    title: GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactProfile()),
        ),
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Hang Senghong"),
        ],
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.call),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.menu_open_rounded),
      ),
    ],
  );
}
