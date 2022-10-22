// ignore_for_file: unused_element, dead_code

import 'package:first_flutter/Telegram/constants/ChatDetailConstant.dart';
import 'package:first_flutter/Telegram/models/ChatDetailModel.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: ChatDetailList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            _ChatLeftBuilder(ChatDetailList[index], context),
            _ChatRightBuilder(ChatDetailList[index]),
          ],
        );
      },
    );
  }
}

Widget _ChatLeftBuilder(chatDetailModel item, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Text(item.text),
              ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // ! ModalSheet in Image Row Left
          GestureDetector(
            onLongPress: () {
              _ModalSheet(context);
            },
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                item.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

//!Modal Sheet
void _ModalSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.black,
    context: context,
    builder: (context) {
      return Container(
        height: 320,
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ListSheet("Forward", Icons.forward),
              Spacer(),
              _ListSheet("Delete", Icons.delete),
              Spacer(),
              _ListSheet("Share", Icons.share),
              Spacer(),
              _ListSheet("Share", Icons.share),
              Spacer(),
              _ListSheet("Share", Icons.share),
            ],
          ),
        ),
      );
    },
  );
}

// !Chat Right Buider
Widget _ChatRightBuilder(chatDetailModel item) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Text(item.text),
              ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ],
  );
}

// ! List Sheet
Widget _ListSheet(final String title, final IconData Icons) {
  return ListTile(
    leading: Icon(
      Icons,
      color: Colors.white,
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
  );
}
