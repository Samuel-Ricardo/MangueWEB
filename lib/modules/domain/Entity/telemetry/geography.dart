import 'dart:convert';

class Geography {
  final double latitude;
  final double longitude;
  final double? timestamp;

  Geography({required this.latitude, required this.longitude, this.timestamp});

  factory Geography.fromMap(Map<String, dynamic> map) {
    return Geography(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      timestamp: map['timestamp'] as double?,
    );
  }

  factory Geography.fromJson(String json) {
    Map<String, dynamic> parsedJson = jsonDecode(json);
    return Geography.fromMap(parsedJson);
  }
}
