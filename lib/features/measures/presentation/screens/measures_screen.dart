import 'package:conversion_app/core/constants/units.dart';
import 'package:conversion_app/core/utils/converter_utils.dart';
import 'package:conversion_app/features/data/conversion_table.dart';
import 'package:conversion_app/features/measures/presentation/widgets/unit_dropdown.dart';
import 'package:conversion_app/features/measures/presentation/widgets/value_input.dart';
import 'package:flutter/material.dart';

class MeasuresScreen extends StatefulWidget {
  const MeasuresScreen({super.key});

  @override
  State<MeasuresScreen> createState() => _MeasuresScreenState();
}

class _MeasuresScreenState extends State<MeasuresScreen> {
  final _controller = TextEditingController();
  String fromUnit = 'meters';
  String toUnit = 'feet';
  String result = '';

 void convert() {
  final value = double.tryParse(_controller.text);

  if (value == null) {
    setState(() {
      result = 'Please enter a valid number';
    });
    return;
  }

  final converted = convertLength(
    value: value,
    from: fromUnit,
    to: toUnit,
    table: lengthConversionToMeter,
  );

  setState(() {
    result =
        '$value $fromUnit are ${converted.toStringAsFixed(3)} $toUnit';
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Measures Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ValueInput(controller: _controller),
            const SizedBox(height: 16),
            const Text('From'),
            UnitDropdown(
              value: fromUnit,
              items: lengthUnits,
              onChanged: (v) => setState(() => fromUnit = v!),
            ),
            const SizedBox(height: 16),
            const Text('To'),
            UnitDropdown(
              value: toUnit,
              items: lengthUnits,
              onChanged: (v) => setState(() => toUnit = v!),
            ),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: convert, child: const Text('Convert')),
            const SizedBox(height: 24),
            Text(result, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
