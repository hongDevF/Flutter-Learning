// ignore_for_file: unused_import

import 'package:flutter/material.dart';

String convertModelString(
  dynamic text,
) {
  text = (text == null ? '' : text.toString());
  String coText = text == null || text == 'null' ? '' : text;
  return coText;
}
