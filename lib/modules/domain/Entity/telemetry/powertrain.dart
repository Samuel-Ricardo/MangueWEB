import 'dart:convert';

class Powertrain {
  final double speed;
  final double rpm;
  final PowertrainTemperature temperature;
  final double? timestamp;

  Powertrain(
      {required this.speed,
      required this.rpm,
      required this.temperature,
      this.timestamp});

  /// Expect:
  ///
  /// {
  ///   "speed": 100,
  ///   "rpm": 100,
  ///   "temperature": {
  ///     "engine": 100,
  ///     "cvt": 100
  ///   },
  ///   "timestamp": 100
  /// }
  factory Powertrain.fromJson(String json) {
    Map<String, dynamic> parsedJson = jsonDecode(json);
    return Powertrain(
      speed: parsedJson['speed'] as double,
      rpm: parsedJson['rpm'] as double,
      temperature: PowertrainTemperature(
        engine: parsedJson['temperature']['engine'] as double,
        cvt: parsedJson['temperature']['cvt'] as double,
      ),
      timestamp: parsedJson['timestamp'] as double?,
    );
  }
}

class PowertrainTemperature {
  final double engine;
  final double cvt;

  PowertrainTemperature({required this.engine, required this.cvt});
}
