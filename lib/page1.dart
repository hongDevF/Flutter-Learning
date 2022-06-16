import 'package:flutter/material.dart';
void main(){
  runApp(MyChildrenPage());
}
class MyChildrenPage extends StatelessWidget {
  // const MyChildrenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBottom() {
    return BottomAppBar(
      color: Colors.grey[900],
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () => print("home clicked"),
          ),
          IconButton(
            icon: Icon(Icons.play_arrow, color: Colors.white),
            onPressed: () => print("play_arrowclicked"),
          ),
          IconButton(
            icon: Icon(Icons.bookmark, color: Colors.white),
            onPressed: () => print("bookmark clicked"),
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () => print("person clicked"),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.white),
            onPressed: () => print("more_horiz clicked"),
          ),
        ],
      ),
    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Text("Latest"),
            onTap: () {
              print("Latest clicked");
            },
          ),
          InkWell(
            child: Text("Trends"),
            onTap: () {
              print("Trends clicked");
            },
          ),
          InkWell(
            child: Text("Popular"),
            onTap: () {
              print("Popular clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              print("more menu clicked");
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: _buildRow(),
    );
  }

  Widget _buildRow() {
    return Container(
      color: Colors.cyanAccent.withOpacity(0.5), //color for debug
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.amber,
              width: 120,
              height: 150,
            ),
            Container(
              color: Colors.blueAccent,
              width: 170,
              height: 100,
            ),
            Container(
              color: Colors.deepOrange,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.lightGreen,
              width: 180,
              height: 180,
            ),
            Container(
              color: Colors.orange,
              width: 120,
              height: 150,
            ),
            Container(
              color: Colors.deepOrangeAccent,
              width: 170,
              height: 100,
            ),
            Container(
              color: Colors.deepOrange,
              width: 150,
              height: 150,
            ),
            Container(
              color: Colors.red,
              width: 180,
              height: 180,
            ),
          ],
        ),
      ),
    );
  }
}
