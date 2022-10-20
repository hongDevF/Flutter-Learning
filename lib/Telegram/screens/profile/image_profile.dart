// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  final String image;
  final double height;

  ImageProfile({
    required this.image,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              '$image',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
