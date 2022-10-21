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
            _ChatLeftBuilder(ChatDetailList[index]),
            _ChatRightBuilder(ChatDetailList[index]),
          ],
        );
      },
    );
  }
}

Widget _ChatLeftBuilder(chatDetailModel item) {
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
