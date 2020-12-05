import 'package:chip_example/data/filter_chips.dart';
import 'package:chip_example/models/filter_chip_data.dart';
import 'package:flutter/material.dart';

class FilterChipPage extends StatefulWidget {
  @override
  _FilterChipPageState createState() => _FilterChipPageState();
}

class _FilterChipPageState extends State<FilterChipPage> {
  final double spacing = 8;

  List<FilterChipData> filterChips = FilterChips.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter chip'),
      ),
      body: buildFilterChip(),
    );
  }

  Widget buildFilterChip() {
    return Wrap(
      runSpacing: spacing,
      spacing: spacing,
      children: filterChips
          .map((filterChip) => FilterChip(
                label: Text(filterChip.label),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: filterChip.color,
                ),
                backgroundColor: filterChip.color.withOpacity(0.1),
                onSelected: (isSelected) => setState(() {
                  filterChips = filterChips.map((otherChip) {
                    return filterChip == otherChip
                        ? otherChip.copy(isSelected: isSelected)
                        : otherChip;
                  }).toList();
                }),
                selected: filterChip.isSelected,
                checkmarkColor: filterChip.color,
                selectedColor: filterChip.color.withOpacity(0.25),
              ))
          .toList(),
    );
  }
}
