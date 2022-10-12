import 'package:flutter/material.dart';

import 'list_of_list_view.dart';

class List_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
        ListOfListView(),
      ],
    );
  }
}
