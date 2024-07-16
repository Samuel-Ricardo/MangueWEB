class Powertrain {
  final double speed;
  final double rpm;
  final _Temperature temperature;
  final double? timestamp;

  Powertrain(
      {required this.speed,
      required this.rpm,
      required this.temperature,
      this.timestamp});
}

class _Temperature {
  final double engine;
  final double cvt;

  _Temperature({required this.engine, required this.cvt});
}
