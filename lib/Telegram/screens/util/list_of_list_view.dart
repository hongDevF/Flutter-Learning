import 'package:first_flutter/Telegram/screens/Chat_page.dart';
import 'package:flutter/material.dart';

class ListOfListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage()),
          )
        },
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCImG4nIo_-jn5_eFrduYg9F-YxhPA9dsr0lF4XVOGlvTH5_zUblU73zFJlRkqiknCao8&usqp=CAU'),
            ),
            title: Text(
              "Senghong",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            subtitle: Text("hello senghong, how are you today?"),
            trailing: Column(
              children: [
                Text(
                  "12:00 pm",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Icon(
                  Icons.notifications_active,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
