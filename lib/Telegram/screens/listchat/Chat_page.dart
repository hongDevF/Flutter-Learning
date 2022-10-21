import 'package:first_flutter/Telegram/screens/listchat/util/chat_detail_page.dart';
import 'package:first_flutter/Telegram/screens/profile/Contact_Profile.dart';

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
        child: ChatDetailPage(),
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
