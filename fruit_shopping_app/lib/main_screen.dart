// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proje_fruit_shopping/all_product.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFF1E1E1E),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  tooltip: "Menu",
                  onPressed: () {},
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_bag_outlined,
                          color: Colors.white),
                      tooltip: "Cart",
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.transparent,
                          child: Image.network(
                            "https://images.pexels.com/photos/672444/pexels-photo-672444.jpeg?cs=srgb&dl=pexels-min-an-672444.jpg&fm=jpg",
                            fit: BoxFit.cover,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 90.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 230,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Image.network(
                          "https://cdn.pocket-lint.com/r/s/970x/assets/images/160425-laptops-review-apple-mac-studio-review-image4-io5vy4jacn.jpg",
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30.0, right: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Products",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AllFruits()));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          "View All",
                          style: TextStyle(
                              color: Color(0xFFF1C950),
                              fontFamily: "Inter",
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xFFF1C950),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 370.0, left: 10.0, right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 175,
                          height: 280,
                          child: Card(
                            color: const Color(0xFF2C2C2C),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(75.0),
                                    topRight: Radius.circular(75.0),
                                    bottomLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 110,
                                    height: 100,
                                    child: Image.network(
                                      "https://www.parallels.com/fileadmin/res/img/homepage/2021/home-pd_xs_upd_2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 20.0, left: 15.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Apple",
                                        style: TextStyle(
                                          color: Color(0xFFF1C950),
                                          fontFamily: "Inter",
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          letterSpacing: 5.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 10.0, left: 15.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Mac M1",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15.0, left: 15.0),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "\$1999",
                                          style: TextStyle(
                                              color: Color(0xFFF1C950),
                                              fontSize: 20,
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            "per Kg",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
