// ignore_for_file: deprecated_member_use

import 'package:first_flutter/models/movie_model.dart';
import 'package:first_flutter/constants/movie_list_constant.dart';
import 'package:flutter/material.dart';

class TikTok_Profile extends StatefulWidget {
  const TikTok_Profile({Key? key}) : super(key: key);

  @override
  State<TikTok_Profile> createState() => _TikTok_ProfileState();
}

class _TikTok_ProfileState extends State<TikTok_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Tik Tok Profile",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
        centerTitle: true,
        // iconTheme: Icon(Icons.add),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          _buildProfile(),
          _buildGridViewBuilder(),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          _buildCircleImage(),
          SizedBox(
            height: 10,
          ),
          _buildFollowText(),
          SizedBox(
            height: 10,
          ),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildGridViewBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: movielist.length,
      padding: EdgeInsets.all(2),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 8 / 9,
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        MovieModel item = movielist[index];
        return Container(
          child: Image.network(item.image, fit: BoxFit.fill),
        );
      },
    );
  }

  Widget _buildButton() {
    return SizedBox(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              print('follow has clicked!');
            },
            child: Text("FOLLOW"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 12,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
            style: TextButton.styleFrom(
              side: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
            style: TextButton.styleFrom(
              side: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  var styeTEx = TextStyle(
      color: Color.fromARGB(214, 11, 0, 0),
      fontWeight: FontWeight.bold,
      fontSize: 20);
  Widget _buildFollowText() {
    return SizedBox(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "56",
            style: styeTEx,
          ),
          Text(
            "12K",
            style: styeTEx,
          ),
          Text(
            "5.6K",
            style: styeTEx,
          ),
        ],
      ),
    );
  }

  Widget _buildCircleImage() {
    // ignore: prefer_const_constructors
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 50,
      child: CircleAvatar(
        radius: 45,
        backgroundImage: NetworkImage(
            "https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg"),
      ),
    );
  }
}
