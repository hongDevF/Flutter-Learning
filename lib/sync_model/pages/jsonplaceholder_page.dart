import 'package:flutter/material.dart';
import '../helpers/post_helper.dart';
import '../models/post_model.dart';

class JsonPlaceholderPage extends StatefulWidget {
  const JsonPlaceholderPage({Key? key}) : super(key: key);

  @override
  State<JsonPlaceholderPage> createState() => _JsonPlaceholderPageState();
}

class _JsonPlaceholderPageState extends State<JsonPlaceholderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.purple,
      title: Text("JSON Placeholder with Photos"),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: _buildFutureBuilder(),
    );
  }

  Widget _buildFutureBuilder() {
    return FutureBuilder<List<PostModel>>(
      future: PostHelper.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return _buildDisplay(snapshot.data);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Widget _buildDisplay(List<PostModel>? items) {
    if (items == null) {
      return Icon(Icons.error);
    }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _buildItem(items[index]);
      },
    );
  }

  Widget _buildItem(PostModel item) {
    return Card(
      child: ListTile(
        leading: Text("${item.albumId}"),
        title: Text("${item.title}"),
        subtitle: Text("${item.url}"),
        trailing: Image.network("${item.thumbnailUrl}"),
      ),
    );
  }
}
