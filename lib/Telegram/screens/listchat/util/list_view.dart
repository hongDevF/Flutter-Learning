// ignore_for_file: unused_element
import 'package:first_flutter/Telegram/screens/listchat/Chat_page.dart';
import 'package:flutter/material.dart';

import '../../../constants/ImageProfileOfusers.dart';
import '../../../models/photos_model.dart';

class List_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView.builder(
        itemCount: ImgageList.length,
        itemBuilder: (context, index) {
          return _ListUser(ImgageList[index], context);
        },
      ),
    );
  }
}

void _DetailChat() {}

Widget _ListUser(UserModel item, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    ),
    child: GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ChatPage(),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(item.image),
        ),
        title: Text(
          item.title_name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(item.sub_title),
        trailing: Column(
          children: [
            Text(
              item.hour.toString() + ":" + item.minute.toString(),
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            Icon(Icons.notifications_on),
          ],
        ),
      ),
    ),
  );
}
