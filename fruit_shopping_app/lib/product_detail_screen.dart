// ignore_for_file: prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class SellFruit extends StatefulWidget {
  final String thumbnail;
  final String title;
  final String price;
  final String brand;

  SellFruit(
      {Key? key,
      required this.thumbnail,
      required this.title,
      required this.price,
      required this.brand})
      : super(key: key);

  @override
  State<SellFruit> createState() => _SellFruitState();
}

class _SellFruitState extends State<SellFruit> {
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
                    Icons.arrow_back_outlined,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  tooltip: "Back",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_bag_rounded,
                          size: 30.0, color: Colors.white),
                      tooltip: "Cart",
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Text(
                    widget.brand,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.normal,
                      letterSpacing: 5.0,
                      color: Color(0xFFF1C950),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 40,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 400,
                      child: Image.network(
                        widget.thumbnail,
                        fit: BoxFit.cover,
                        width: 200,
                      )),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 200.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.price}",
                    style: const TextStyle(
                      fontSize: 40,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5.0,
                      color: Color(0xFFF1C950),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300.0, left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "PER KG",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 10,
                        fontSize: 25.0),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 320,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFF1C950),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      )),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Color(0xFF2C2C2C),
                          fontSize: 17.0,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        // <-- Icon
                        Icons.arrow_right_alt,
                        size: 24.0,
                        color: Color(0xFF2C2C2C),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
