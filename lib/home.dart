import 'dart:convert';

import 'package:crypto/crypto.dart';

void main() {
  var code = utf8.encode("test");
  var value = sha512.convert(code);
  var decrypt = utf8.decode(value);
  print(decrypt);
  String name = "dara";
}
