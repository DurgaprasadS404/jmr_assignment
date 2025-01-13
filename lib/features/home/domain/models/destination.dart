import 'package:jmr_assignment/features/home/data/models/trip_type.dart';

class Destination {
  final String imagePath;
  final double price;
  final TripType tripType;
  final String cabinType;
  final String destinationName;

  Destination({
    required this.imagePath,
    required this.price,
    required this.tripType,
    required this.cabinType,
    required this.destinationName,
  });
}
