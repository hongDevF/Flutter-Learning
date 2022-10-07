import 'package:flutter/material.dart';
import 'package:first_flutter/pages/build_page_body.dart';

void main() {
  runApp(main_Page());
}

// ignore: must_be_immutable
class main_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildButtonNavigation(),
    );
  }

  void setState(Null Function() param0) {}
  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: buil_page_body(),
    );
  }

  int _currentIndex = 0;
  Widget _buildButtonNavigation() {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.purple[100],
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.place_rounded), label: "PLay"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
      ],
    );
  }
}
