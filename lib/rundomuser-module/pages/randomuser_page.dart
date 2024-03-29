import 'package:flutter/material.dart';
import '../helpers/randomuser_helper.dart';
import '../models/randomuser_model.dart';

class RandomUserPage extends StatefulWidget {
  const RandomUserPage({Key? key}) : super(key: key);

  @override
  State<RandomUserPage> createState() => _RandomUserPageState();
}

TextStyle textColor = TextStyle(color: Colors.white);

class _RandomUserPageState extends State<RandomUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      title: Text("Random User Page"),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: _buildFutureBuilder(),
    );
  }

  Widget _buildFutureBuilder() {
    return FutureBuilder<RandomUserModel>(
      future: RandomUserHelper.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return _buildDisplay(snapshot.data);
        } else {
          return CircularProgressIndicator(
            color: Colors.red,
          );
        }
      },
    );
  }

  Widget _buildDisplay(RandomUserModel? randomUserModel) {
    if (randomUserModel == null) {
      return Icon(Icons.error);
    }

    return ListView.builder(
      itemCount: randomUserModel.results.length,
      itemBuilder: (context, index) {
        return _buildItem(randomUserModel.results[index]);
      },
    );
  }

  Widget _buildItem(Result item) {
    return Card(
      color: Color.fromARGB(255, 125, 128, 125),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 11, 167, 29),
          radius: 30,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage("${item.picture.large}"),
          ),
        ),
        title: Text(
          "${item.name.first} ${item.name.last}",
          style: textColor,
        ),
        subtitle: Text("${item.location.city}, ${item.location.country}",
            style: textColor),
        trailing: Text(
          "${item.nat}",
          style: textColor,
        ),
      ),
    );
  }
}
