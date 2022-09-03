import 'package:first_flutter/API/models/ProductModel.dart';
import 'package:first_flutter/API/service/ProductService.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: _buildBody(),
      drawer: myDrawer(),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Colors.black12,
    title: Text("GET Products API"),
  );
}

Widget _buildBody() {
  return Container(
    alignment: Alignment.center,
    child: _buildFutureBuilder(),
  );
}

Widget _buildFutureBuilder() {
  return FutureBuilder<List<ProductModel>>(
    future: ProductService.getData(),
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

Widget _buildDisplay(List<ProductModel>? items) {
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

Widget _buildItem(ProductModel item) {
  return Card(
    child: ListTile(
      leading: Image.network("${item.thumbnail}"),
      title: Text("${item.title}"),
      subtitle: Text("${item.discountPercentage}"),
      trailing: Text("${item.brand}"),
    ),
  );
}

Widget myDrawer() {
  return Drawer(
    child: Text("Test"),
  );
}
