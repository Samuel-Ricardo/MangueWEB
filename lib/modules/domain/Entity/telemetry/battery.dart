import 'dart:convert';

class Battery {
  final double voltage;
  final double stateOfCharge;
  final double? timestamp;

  Battery({required this.voltage, required this.stateOfCharge, this.timestamp});

  /// Expect:
  /// {
  ///   "voltage": 100,
  ///   "stateOfCharge": 100,
  ///   "timestamp": 100
  /// }
  factory Battery.fromJson(String json) {
    Map<String, dynamic> parsedJson = jsonDecode(json);

    return Battery(
      voltage: parsedJson['voltage'] as double,
      stateOfCharge: parsedJson['stateOfCharge'] as double,
      timestamp: parsedJson['timestamp'] as double?,
    );
  }
}
