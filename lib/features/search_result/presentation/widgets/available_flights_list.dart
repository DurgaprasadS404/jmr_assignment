import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/constants/assets.dart';
import 'package:jmr_assignment/features/home/data/models/trip_type.dart';
import 'package:jmr_assignment/features/search_result/domain/models/flight.dart';
import 'package:jmr_assignment/features/search_result/domain/models/trip.dart';
import 'package:jmr_assignment/features/search_result/presentation/widgets/dotted_divider.dart';
import 'package:jmr_assignment/features/search_result/presentation/widgets/flight_additional_details.dart';
import 'package:jmr_assignment/features/search_result/presentation/widgets/flight_details_section.dart';

class AvailableFlightsList extends StatelessWidget {
  AvailableFlightsList({super.key});

  final List<Trip> trips = [
    Trip(
      originatingFlight: Flight(
          flightName: 'Garuda Indonesia',
          flightImagePath: Assets.airlineImageAsset,
          price: 'AED 450',
          departureTime: '10:00',
          departureAirport: 'BLR - Bengaluru',
          arrivalTime: '14:00',
          arrivalAirport: 'DXB - Dubai',
          flightTime: '4h 12m',
          stopCount: 3,
          isOriginatingFLight: true),
      returnFlight: Flight(
          flightName: 'Garuda Indonesia',
          flightImagePath: Assets.airlineImageAsset,
          price: 'AED 450',
          departureTime: '18:00',
          departureAirport: 'DXB - Dubai',
          arrivalTime: '22:00',
          arrivalAirport: 'BLR - Bengaluru',
          flightTime: '4h 30m',
          stopCount: 1,
          isOriginatingFLight: false),
      tripType: TripType.roundTrip,
    ),
    Trip(
      originatingFlight: Flight(
          flightName: 'Garuda Indonesia',
          flightImagePath: Assets.airlineImageAsset,
          price: 'AED 450',
          departureTime: '10:00',
          departureAirport: 'BLR - Bengaluru',
          arrivalTime: '14:00',
          arrivalAirport: 'DXB - Dubai',
          flightTime: '4h',
          stopCount: 2,
          isOriginatingFLight: true),
      returnFlight: Flight(
          flightName: 'Garuda Indonesia',
          flightImagePath: Assets.airlineImageAsset,
          price: 'AED 450',
          departureTime: '18:00',
          departureAirport: 'DXB - Dubai',
          arrivalTime: '22:00',
          arrivalAirport: 'BLR - Bengaluru',
          flightTime: '4h',
          stopCount: 1,
          isOriginatingFLight: false),
      tripType: TripType.roundTrip,
    ),
    Trip(
      originatingFlight: Flight(
          flightName: 'Airline C',
          flightImagePath: Assets.airlineImageAsset,
          price: 'AED 350',
          departureTime: '12:00',
          departureAirport: 'BLR - Bengaluru',
          arrivalTime: '16:00',
          arrivalAirport: 'DXB - Dubai',
          flightTime: '4h 30m',
          stopCount: 1,
          isOriginatingFLight: true),
      returnFlight: null,
      tripType: TripType.oneWay,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          '  ${trips.length} Flights found',
          style: const TextStyle(fontSize: 15),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.separated(
          itemCount: trips.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final trip = trips[index];
            return Card(
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  // Originating Flight Section
                  FlightDetailsSection(flight: trip.originatingFlight),
                  if (trip.returnFlight != null) ...[
                    const Divider(),
                    // Return Flight Section
                    FlightDetailsSection(flight: trip.returnFlight!),
                  ],
                  const SizedBox(height: 12),
                  const DottedDivider(),
                  // Options Section
                  const FlightAdditionalDetails(),                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 20);
          },
        ),
      ],
    );
  }
}
