import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/status_enum.dart';
import '../logics/randomuser_logic.dart';
import '../models/randomuser_model.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool _showIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _showIcon ? _buildFloating() : null,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text("Favorite Page"),
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
    List<Result> favoriteList = context.watch<RandomUserLogic>().favoriteList;

    return RefreshIndicator(
      onRefresh: () async {
        await context.read<RandomUserLogic>().getMoreData(refreshed: true);
      },
      child: ListView.builder(
        controller: _scrollCtrl,
        physics: BouncingScrollPhysics(),
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          return _buildItem(favoriteList[index]);
        },
      ),
    );
  }

  Widget _buildItem(Result item) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        context.read<RandomUserLogic>().removeFromFavorite(item);
      },
      child: Card(
        child: ListTile(
          leading: Image.network(item.picture.large),
          title: Text("${item.name.first} ${item.name.last}"),
          subtitle: Text("${item.location.city}, ${item.location.country}"),
        ),
      ),
    );
  }
}
