import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            onPressed: () => print("home clicked"),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,size: 30,),
            onPressed: () => print("play_arrowclicked"),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.add_box, color: Colors.white,size: 35,),
            onPressed: () => print("bookmark clicked"),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.inbox, color: Colors.white),
            onPressed: () => print("person clicked"),
          ),
          Spacer(),
          // IconButton(
          //   icon: Icon(CupertinoIcons.arrowshape_turn_up_right_fill,
          //       color: Colors.white),
          //   onPressed: () => print("share"),
          // ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
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
      color: Colors.black,
      child: _buildTikTok(),
    );
  }

  Widget _buildTikTok() {
    String pic =
        "https://lumiere-a.akamaihd.net/v1/images/p_blackwidow_21043_v2_6d1b73b8.jpeg";
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(child: Image.network(pic)),
        Positioned(child: _buildTitleFollow(), top: 20),
        Positioned(right: 20, bottom: 20, child: _buildTikTokIcons()),
        Positioned(left: 20, bottom: 20, child: _buildTikTokTexts()),
      ],
    );
  }

  // Folower title
  Widget _buildTitleFollow() {
    return Container(
      //for debug only
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Following",
            style:
            TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "|",
            style: TextStyle(color: Colors.white.withOpacity(0.3)),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "For You",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _buildTikTokTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "@Movies",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          "Dr. Strange - Multiverse of Madness",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildTikTokIcons() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Icon(Icons.favorite, color: Colors.white),
            onTap: () => print("home clicked"),
          ),
          Text("100K", style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          InkWell(
            child:
            Icon(CupertinoIcons.chat_bubble_text_fill, color: Colors.white),
            onTap: () => print("play_arrowclicked"),
          ),
          Text("1531", style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          InkWell(
            child: Icon(CupertinoIcons.arrowshape_turn_up_right_fill,
                color: Colors.white),
            onTap: () => print("bookmark clicked"),
          ),
          Text("1.5K", style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildPlayImage() {
    String pic = "https://pbs.twimg.com/media/FPn5XwMVgAE8v2x.jpg:large";
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          child: Image.network(pic),
        ),
        Container(
          width: 100,
          height: 100,
          child: IconButton(
            onPressed: () {},
            icon:
            // ignore: prefer_const_constructors
            Icon(Icons.play_circle_fill, color: Colors.white54, size: 100),
          ),
        ),
      ],
    );
  }

  Widget _buildStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(color: Colors.amber, width: 320, height: 350),
        Container(color: Colors.blueAccent, width: 270, height: 200),
        Positioned(
          right: 10,
          bottom: 20,
          child: Container(color: Colors.red, width: 110, height: 120),
        ),
      ],
    );
  }

  Widget _buildRowWithExpanded() {
    return Container(
      child: Column(
        children: [
          _buildMessageList(),
          _buildMessageText(),
        ],
      ),
    );
  }

  Widget _buildMessageList() {
    return Expanded(
      child: Container(
        color: Colors.white,
        width: double.maxFinite,
        child: _buildColumn(),
      ),
    );
  }

  Widget _buildColumn() {
    return Container(
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

  Widget _buildMessageText() {
    return Container(
      color: Colors.grey[200],
      width: double.maxFinite,
      height: 80,
      child: Row(
        children: [
          _buildAttachIcon(),
          _buildTextField(),
          _buildMicIcon(),
        ],
      ),
    );
  }

  Widget _buildAttachIcon() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.attach_file),
    );
  }

  Widget _buildTextField() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Message",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget _buildMicIcon() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.mic),
    );
  }
}
