import 'package:chip_example/data/action_chip.dart';
import 'package:chip_example/models/action_chip_data.dart';
import 'package:chip_example/utils.dart';
import 'package:flutter/material.dart';

class ActionChipPage extends StatefulWidget {
  @override
  _ActionChipPageState createState() => _ActionChipPageState();
}

class _ActionChipPageState extends State<ActionChipPage> {
  final double spacing = 8;
  List<ActionChipData> actionChips = ActionChips.all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Action Chip'),
      ),
      body: buildActionChips(),
    );
  }

  Widget buildActionChips() => Builder(
        builder: (BuildContext context) => Wrap(
          runSpacing: spacing,
          spacing: spacing,
          children: actionChips
              .map((actionChip) => ActionChip(
                    avatar: Icon(
                      actionChip.icon,
                      color: actionChip.iconColor,
                    ),
                    backgroundColor: Colors.grey[200],
                    label: Text(actionChip.label),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    onPressed: () => Utils.showSnackBar(
                        context, 'Do action "${actionChip.label}"...'),
                  ))
              .toList(),
        ),
      );
}
