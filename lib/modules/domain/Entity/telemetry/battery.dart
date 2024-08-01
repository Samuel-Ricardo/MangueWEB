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

    return Battery.fromMap(parsedJson);
  }

  factory Battery.fromMap(Map<String, dynamic> map) {
    return Battery(
      voltage: map['voltage'] as double,
      stateOfCharge: map['stateOfCharge'] as double,
      timestamp: map['timestamp'] as double?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'voltage': voltage,
      'stateOfCharge': stateOfCharge,
      'timestamp': timestamp,
    };
  }

  String toJson() => jsonEncode(toMap());
}
