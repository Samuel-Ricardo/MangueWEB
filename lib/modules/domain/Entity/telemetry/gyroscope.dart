import 'dart:convert';

class Gyroscope {
  final GyroscopeAcceleration acceleration;
  final double roll;
  final double pitch;
  final double? yaw;

  Gyroscope(this.acceleration, this.roll, this.pitch, this.yaw);
}

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

  factory GyroscopeAcceleration.fromJson(String json) {
    return GyroscopeAcceleration.fromMap(jsonDecode(json));
  }
}
