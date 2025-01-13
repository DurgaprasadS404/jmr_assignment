class Flight {
  final String flightName;
  final String flightImagePath;
  final String price;
  final String departureTime;
  final String departureAirport;
  final String arrivalTime;
  final String arrivalAirport;
  final String flightTime;
  final int stopCount;
  final bool isOriginatingFLight;

  Flight(
      {required this.flightName,
      required this.flightImagePath,
      required this.price,
      required this.departureTime,
      required this.departureAirport,
      required this.arrivalTime,
      required this.arrivalAirport,
      required this.flightTime,
      required this.stopCount,
      required this.isOriginatingFLight});
}
