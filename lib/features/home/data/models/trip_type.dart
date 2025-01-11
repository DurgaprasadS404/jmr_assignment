enum TripType { roundTrip, oneWay, multiCity }

extension TripTypeExtension on TripType {
  String toDisplayString() {
    switch (this) {
      case TripType.roundTrip:
        return "Round Trip";
      case TripType.oneWay:
        return "One Way";
      case TripType.multiCity:
        return "Multi-city";
    }
  }
}
