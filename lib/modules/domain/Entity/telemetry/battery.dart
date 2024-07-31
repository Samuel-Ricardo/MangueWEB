class Battery {
  final double voltage;
  final double stateOfCharge;
  final double? timestamp;

  Battery({required this.voltage, required this.stateOfCharge, this.timestamp});
}
