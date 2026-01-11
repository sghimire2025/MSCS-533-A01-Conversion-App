import 'package:flutter/material.dart';

class UnitDropdown extends StatelessWidget {
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const UnitDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      items: items
          .map((unit) =>
              DropdownMenuItem(value: unit, child: Text(unit)))
          .toList(),
      onChanged: onChanged,
    );
  }
}
