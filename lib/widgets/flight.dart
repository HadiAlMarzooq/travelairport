class flight {
  String flightNumber;
  int gateNumber;
  DateTime flightTime;

  flight(this.flightNumber, this.gateNumber, this.flightTime) {}

  String getFlightName() {
    return flightNumber;
  }

  int getGateNumber() {
    return gateNumber;
  }

  DateTime getFlightDate() {
    return flightTime;
  }
}
