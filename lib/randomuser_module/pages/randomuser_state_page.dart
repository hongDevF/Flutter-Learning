import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/status_enum.dart';
import '../logics/randomuser_logic.dart';
import '../models/randomuser_model.dart';
import 'favorite_page.dart';

class RandomUserStatePage extends StatefulWidget {
  const RandomUserStatePage({Key? key}) : super(key: key);

  @override
  State<RandomUserStatePage> createState() => _RandomUserStatePageState();
}

class _RandomUserStatePageState extends State<RandomUserStatePage> {
  bool _showIcon = false;

  @override
  void initState() {
    super.initState();

    _scrollCtrl.addListener(() {
      if (_scrollCtrl.position.pixels == _scrollCtrl.position.maxScrollExtent) {
        context.read<RandomUserLogic>().getMoreData();
      }

      if (_scrollCtrl.position.pixels >= 150) {
        setState(() {
          _showIcon = true;
        });
      } else {
        setState(() {
          _showIcon = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _showIcon ? _buildFloating() : null,
    );
  }

  AppBar _buildAppBar() {
    bool hasFavorite = context.watch<RandomUserLogic>().hasFavorite();

    return AppBar(
      backgroundColor: Colors.indigo,
      title: Text("Random User State Page"),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => FavoritePage()));
          },
          icon: hasFavorite
              ? Icon(Icons.favorite, color: Colors.red)
              : Icon(Icons.favorite_border),
        ),
      ],
    );
  }

  Widget _buildFloating() {
    return FloatingActionButton(
      backgroundColor: Colors.indigo,
      child: Icon(Icons.arrow_upward),
      onPressed: () {
        _scrollCtrl.animateTo(
          0,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: _buildLoading(),
    );
  }

  Widget _buildLoading() {
    Status status = context.watch<RandomUserLogic>().status;
    switch (status) {
      case Status.none:
      case Status.loading:
        return Center(child: CircularProgressIndicator());
      case Status.error:
        return _buildError();
      case Status.done:
        return _buildDisplay();
    }
  }

  Widget _buildError() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, size: 30),
          SizedBox(height: 10),
          Text(
            "No Internet or Server is Down",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              context.read<RandomUserLogic>().setLoading();
              context.read<RandomUserLogic>().getMoreData();
            },
            icon: Icon(Icons.refresh),
            label: Text("RETRY"),
          ),
        ],
      ),
    );
  }

  var _scrollCtrl = ScrollController();

  Widget _buildDisplay() {
    // RandomUserModel randomUserModel = context.watch<RandomUserLogic>().randomUserModel;

    List<Result> resultList = context.watch<RandomUserLogic>().resultList;

    return RefreshIndicator(
      onRefresh: () async {
        // context.read<RandomUserLogic>().setLoading();
        await context.read<RandomUserLogic>().getMoreData(refreshed: true);
      },
      child: ListView.builder(
        controller: _scrollCtrl,
        physics: BouncingScrollPhysics(),
        itemCount: resultList.length + 1,
        itemBuilder: (context, index) {
          if (index < resultList.length) {
            return _buildItem(resultList[index]);
          } else {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text("Loading..."),
              // child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _buildItem(Result item) {
    bool isFavorite = context.watch<RandomUserLogic>().isFavorite(item);

    return Card(
      child: ListTile(
        leading: Image.network(item.picture.large),
        title: Text("${item.name.first} ${item.name.last}"),
        subtitle: Text("${item.location.city}, ${item.location.country}"),
        trailing: IconButton(
          onPressed: () {
            if (isFavorite) {
              context.read<RandomUserLogic>().removeFromFavorite(item);
            } else {
              context.read<RandomUserLogic>().addToFavorite(item);
            }
          },
          icon: isFavorite
              ? Icon(Icons.favorite, color: Colors.red)
              : Icon(Icons.favorite_border),
        ),
      ),
    );
  }
}
