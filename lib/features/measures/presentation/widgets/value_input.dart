import 'package:flutter/material.dart';

class ValueInput extends StatelessWidget {
  final TextEditingController controller;

  const ValueInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(labelText: 'Value'),
    );
  }
}
