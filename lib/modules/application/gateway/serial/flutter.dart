import 'dart:typed_data';

import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:mangueweb/modules/domain/gateway/serial.dart';

class FlutterSerialPortGateway implements SerialPortGateway {
  final SerialPort engine;

  FlutterSerialPortGateway(this.engine);

  void _openConnection() {
    engine.openReadWrite();
  }
}
