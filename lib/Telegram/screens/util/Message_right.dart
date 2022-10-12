import 'package:flutter/material.dart';

class MessageRight extends StatefulWidget {
  @override
  State<MessageRight> createState() => _MessageRightState();
}

class _MessageRightState extends State<MessageRight> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text("test"),
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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHcnOnyW_Pnvcv17_CHMrshz-jP7CQRjLOZ3bVpxux-2C69fZolxk34sMRbmojf6DdtXY&usqp=CAU',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ],
    );
  }
}
