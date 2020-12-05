import 'package:chip_example/data/input_chips.dart';
import 'package:chip_example/models/input_chip_data.dart';
import 'package:chip_example/utils.dart';
import 'package:flutter/material.dart';

class InputChipPage extends StatefulWidget {
  InputChipPage({Key key}) : super(key: key);

  @override
  _InputChipPageState createState() => _InputChipPageState();
}

class _InputChipPageState extends State<InputChipPage> {
  final double spacing = 8;
  List<InputChipData> inputChips = InputChips.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter chip'),
      ),
      body: buildInputChip(),
    );
  }

  Widget buildInputChip() => Builder(
        builder: (context) => Wrap(
          runSpacing: spacing,
          spacing: spacing,
          children: inputChips
              .map((inputChip) => InputChip(
                    avatar: CircleAvatar(
                      backgroundImage: NetworkImage(inputChip.urlAvatar),
                    ),
                    label: Text(inputChip.label),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    onPressed: () => Utils.showSnackBar(
                        context, 'Interacted with "${inputChip.label}"'),
                    onDeleted: () =>
                        setState(() => inputChips.remove(inputChip)),
                  ))
              .toList(),
        ),
      );
}
