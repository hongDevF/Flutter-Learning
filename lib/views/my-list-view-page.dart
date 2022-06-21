import 'package:first_flutter/constants/movie_list_constant.dart';
import 'package:first_flutter/models/movie_model.dart';
import 'package:flutter/material.dart';

class MyListViewPage extends StatefulWidget {
  const MyListViewPage({Key? key}) : super(key: key);

  @override
  State<MyListViewPage> createState() => _MyListViewPageState();
}

class _MyListViewPageState extends State<MyListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("My ListView Page"),
      );
  // Widget _builLis
  Widget _buildBody() {
    return ListView(
      children: [
        _buildPageViewBuilder(),
        _buildGridView(),
        _buildListViewBuilder1(),
        // _buildListViewBuilder1(),
      ], // color: Colors.black,
    );
  }

  Widget _buildPageViewBuilder() {
    return SizedBox(
      height: 300,
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movielist.length,
          itemBuilder: (context, index) {
            return _buildItem(movielist[index]);
          }),
    );
  }

  Widget _buildItem(MovieModel Item) {
    return Container(
      // child: Container(
      //   height: MediaQuery.of(context).size.height,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(20),
      //       topRight: Radius.circular(20),
      //     ),
      //     image: DecorationImage(
      //       image: NetworkImage(Item.image),
      //       fit: BoxFit.cover,
      //     )
      //   ),
      // ),
      // margin: EdgeInsets.all(10),
      child: Image.network(Item.image, fit: BoxFit.cover),
    );
  }

  Widget _buildListViewBuilder1() {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: movielist.length,
        itemBuilder: (context, index) {
          return _buildListItem(movielist[index]);
        });
  }

  Widget _buildGridView() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: movielist.length,
      padding: EdgeInsets.all(5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 6 / 9,
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        MovieModel item = movielist[index];
        return Container(
          child: Image.network(
            item.image,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget _buildListItem(MovieModel item) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(item.image), fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(100),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text(item.title),
          ),
        ),
      ],
    );
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

  Widget _buildListView2() {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          Container(width: 170, color: Colors.yellow),
          Container(width: 120, color: Colors.orange),
          Container(width: 190, color: Colors.blue),
          Container(width: 180, color: Colors.pink),
          Container(width: 150, color: Colors.purple),
          Container(width: 100, color: Colors.greenAccent),
        ],
      ),
    );
  }

  Widget _buildListView1() {
    return ListView(
      padding: EdgeInsets.all(30),
      physics: BouncingScrollPhysics(),
      // reverse: true,
      children: [
        Container(width: 170, height: 170, color: Colors.yellow),
        Container(width: 120, height: 120, color: Colors.orange),
        Container(width: 190, height: 190, color: Colors.blue),
        Container(width: 180, height: 180, color: Colors.pink),
        Container(width: 150, height: 150, color: Colors.purple),
        Container(width: 100, height: 100, color: Colors.greenAccent),
      ],
    );
  }
}
