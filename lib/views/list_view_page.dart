// ignore_for_file: unused_element

import 'package:first_flutter/constants/movie_list_constant.dart';
import 'package:first_flutter/models/movie_model.dart';
import 'package:flutter/material.dart';

class myListView extends StatelessWidget {
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
      color: Colors.grey,
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
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () => print("Person clicked"),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.black,
      child: _buildListViewBuilder(),
    );
  }

  Widget _buildListViewBuilder() {
    return ListView.builder(
        itemCount: movielist.length,
        itemBuilder: (context, index) {
          // return Container(
          // color: Colors.red,
          // padding: EdgeInsets.all(10),
          // margin: EdgeInsets.all(10),
          // child: Text("items $index"),
          // );
          return _buildMovieListItems(movielist[index]);
        });
  }

  Widget _buildMovieListItems(MovieModel item) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            // color: Colors.red,
            height: 300,
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(item.image),
                    fit: BoxFit.cover,
                  )),

              // child: Image.network(item.image ,fit: BoxFit.fill,),
            )),
        Positioned(
            bottom: 20,
            child: Container(
              width: 250,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              color: Colors.white70,
              child: Text(
                item.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ))
      ],
    );
  }

  Widget _myDecoration() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _buildScroll() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 140,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 80,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 80,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              width: 90,
              height: 80,
              color: Colors.white10,
            ),
            Container(
              width: 70,
              height: 140,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListView1() {
    return ListView(
      physics: BouncingScrollPhysics(),
      reverse: true,
      children: [
        Container(
          width: 70,
          height: 140,
          color: Colors.red,
        ),
        Container(
          width: 70,
          height: 300,
          color: Colors.amber,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.green,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.deepOrangeAccent,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.white10,
        ),
        Container(
          width: 70,
          height: 140,
          color: Colors.red,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.amber,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.green,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.deepOrangeAccent,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.white10,
        ),
      ],
    );
  }

  Widget _buildListView2() {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      reverse: true,
      children: [
        Container(
          width: 70,
          height: 140,
          color: Colors.red,
        ),
        Container(
          width: 70,
          height: 300,
          color: Colors.amber,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.green,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.deepOrangeAccent,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.white10,
        ),
        Container(
          width: 70,
          height: 140,
          color: Colors.red,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.amber,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.green,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.deepOrangeAccent,
        ),
        Container(
          width: 70,
          height: 80,
          color: Colors.white10,
        ),
      ],
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.black12,
    title: Text("List View Movies"),
  );
}
