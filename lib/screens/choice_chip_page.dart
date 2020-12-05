import 'package:chip_example/data/choice_chip.dart';
import 'package:chip_example/models/choice_chip_data.dart';
import 'package:flutter/material.dart';

class ChoiceChipPage extends StatefulWidget {
  @override
  _ChoiceChipPageState createState() => _ChoiceChipPageState();
}

class _ChoiceChipPageState extends State<ChoiceChipPage> {
  final double spacing = 8;
  List<ChoiceChipData> choiceChips = ChoiceChips.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choice Chip'),
      ),
      body: buildChoiceChips(),
    );
  }

  Widget buildChoiceChips() => Builder(
        builder: (context) => Wrap(
          runSpacing: spacing,
          spacing: spacing,
          children: choiceChips
              .map((choiceChip) => ChoiceChip(
                    label: Text(choiceChip.label),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    onSelected: (isSelected) => setState(() {
                      choiceChips = choiceChips.map((otherChip) {
                        final newChip = otherChip.copy(isSelected: false);

                        return choiceChip == newChip
                            ? newChip.copy(isSelected: isSelected)
                            : newChip;
                      }).toList();
                    }),
                    selected: choiceChip.isSelected,
                    selectedColor: Colors.green,
                    backgroundColor: Colors.blue,
                  ))
              .toList(),
        ),
      );
}
