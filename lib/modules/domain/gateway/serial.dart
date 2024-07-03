abstract class SerialPortGateway {
  List<String> availablePorts();
  String write(String data);
  String read();
}
