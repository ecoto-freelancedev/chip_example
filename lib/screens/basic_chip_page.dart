import 'package:flutter/material.dart';

class BasicChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Chip'),
      ),
      body: Center(
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue[400],
            backgroundImage: AssetImage('images/flutter_logo.png'),
          ),
          label: Text('Chip'),
        ),
      ),
    );
  }
}
