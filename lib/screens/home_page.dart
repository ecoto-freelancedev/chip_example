import 'package:chip_example/screens/action_chip_page.dart';
import 'package:chip_example/screens/basic_chip_page.dart';
import 'package:chip_example/screens/choice_chip_page.dart';
import 'package:chip_example/screens/filter_chip_page.dart';
import 'package:chip_example/screens/input_chip_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chip Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chip Widget'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Basic Chip'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BasicChip())),
            ),
            ListTile(
              title: Text('Filter Chip'),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FilterChipPage())),
            ),
            ListTile(
              title: Text('Input Chip'),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => InputChipPage())),
            ),
            ListTile(
              title: Text('Action Chip'),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ActionChipPage())),
            ),
            ListTile(
              title: Text('Choice Chip'),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ChoiceChipPage())),
            ),
          ],
        ),
      ),
    );
  }
}
