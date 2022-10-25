import 'package:flutter/material.dart';
import 'package:proje_fruit_shopping/async/modal/view_all_product_modal.dart';
import 'package:proje_fruit_shopping/product_detail_screen.dart';

import 'async/helper/view_all_post_helper.dart';

class AllFruits extends StatefulWidget {
  const AllFruits({Key? key}) : super(key: key);

  @override
  State<AllFruits> createState() => _AllFruitsState();
}

class _AllFruitsState extends State<AllFruits> {
  //Get Data Product
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text("All Fruits"),
      ),
      backgroundColor: Colors.white,
      body: _buildFutureBuilder(),
    );
  }

  Widget _buildFutureBuilder() {
    return FutureBuilder<List<ProductsResult>>(
      future: products(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        if (snapshot.hasData) {
          List<ProductsResult> item = snapshot.data!;
          return _buildProductItem(item);
        } else {
          // ignore: prefer_const_constructors
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _buildProductItem(item) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3.7,
      ),
      itemCount: item.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SellFruit(
                      thumbnail: item[index].thumbnail,
                      title: item[index].title,
                      price: item[index].price,
                      brand: item[index].brand,
                    ),
                  ),
                );
              },
              child: Card(
                color: const Color(0xFF2C2C2C),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Column(
                    children: [
                      SizedBox(
                          width: 150,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image.network(
                              item[index].thumbnail,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item[index].brand,
                            style: const TextStyle(
                              color: Color(0xFFF1C950),
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              letterSpacing: 5.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 15.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item[index].title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                        child: Row(
                          children: [
                            Text(
                              "\$${item[index].price}",
                              style: const TextStyle(
                                  color: Color(0xFFF1C950),
                                  fontSize: 20,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
