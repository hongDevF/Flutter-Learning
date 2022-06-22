import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter/constants/movie_list_constant.dart';
import 'package:first_flutter/models/movie_model.dart';

class Stack_slide_tik_tok_view extends StatelessWidget {
  // const Stack_slide_tik_tok_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildTikTokBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildTikTokBody() {
    return SizedBox(
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: movielist.length,
          itemBuilder: (context, index) {
            return _buildItem(movielist[index]);
          }),
    );
  }

  Widget _buildItem(MovieModel Item) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(child: (Image.network(Item.image, fit: BoxFit.cover))),
        Positioned(child: _buildTitleFollow(), top: 50),
        Positioned(right: 20, bottom: 20, child: _buildTikTokIcons()),
        Positioned(left: 20, bottom: 20, child: _buildTikTokTexts()),
      ],
    );
  }

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
          "@MEMEabc",
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
            child: Icon(CupertinoIcons.person, color: Colors.white),
            onTap: () {},
          ),
          Text("profile", style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          InkWell(
            child: Icon(Icons.favorite, color: Colors.red),
            onTap: () => print("love clicked"),
          ),
          Text("100K", style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          InkWell(
            child:
                Icon(CupertinoIcons.chat_bubble_text_fill, color: Colors.white),
            onTap: () => print("play_arrowclicked"),
          ),
          Text("1531", style: TextStyle(color: Colors.red)),
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
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => print("play_arrowclicked"),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.add_box,
              color: Colors.white,
              size: 35,
            ),
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
}
