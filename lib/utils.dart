import 'package:flutter/material.dart';

class Utils {
  static void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));

    Scaffold.of(context).showSnackBar(snackBar);
  }
}
