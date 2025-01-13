import 'package:jmr_assignment/features/home/data/models/trip_type.dart';
import 'package:jmr_assignment/features/search_result/domain/models/flight.dart';

class Trip {
  final Flight originatingFlight;
  final Flight? returnFlight;
  final TripType tripType;

  Trip({
    required this.originatingFlight,
    this.returnFlight,
    required this.tripType,
  });
}
