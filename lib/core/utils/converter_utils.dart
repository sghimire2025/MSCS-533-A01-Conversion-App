double convertLength({
  required double value,
  required String from,
  required String to,
  required Map<String, double> table,
}) {
  final valueInMeters = value * table[from]!;
  return valueInMeters / table[to]!;
}
