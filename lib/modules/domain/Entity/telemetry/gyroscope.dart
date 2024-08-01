class GyroscopeAcceleration {
  final double x;
  final double y;
  final double z;

  GyroscopeAcceleration(this.x, this.y, this.z);

  factory GyroscopeAcceleration.fromMap(Map<String, dynamic> json) {
    return GyroscopeAcceleration(
      json['x'] as double,
      json['y'] as double,
      json['z'] as double,
    );
  }
}
