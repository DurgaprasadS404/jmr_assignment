import 'package:intl/intl.dart';

class DatePrice {
  final DateTime departureDate;
  final DateTime arrivalDate;
  final int startingPrice;

  DatePrice({
    required this.departureDate,
    required this.arrivalDate,
    required this.startingPrice,
  });

  String get formattedDateRange {
    final DateFormat formatter = DateFormat('MMM dd');
    return '${formatter.format(departureDate)} - ${formatter.format(arrivalDate)}';
  }
}