import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/features/search_result/domain/models/flight.dart';

class FlightDetailsSection extends StatelessWidget {
  const FlightDetailsSection({super.key, required this.flight});
  final Flight flight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                flight.flightImagePath,
                height: 35,
                width: 35,
              ),
              const SizedBox(width: 8),
              Text(
                'Onward - ${flight.flightName}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                flight.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      flight.departureTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      flight.departureAirport,
                      style: TextStyle(
                        color: AppColors.subTitleColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Row(
                          children: List.generate(
                            35,
                            (index) => Container(
                              height: 1,
                              width: 3,
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : AppColors.dividerColor,
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle:
                              1.57, // Rotate by 90 degrees (pi / 2 in radians)
                          child: Icon(
                            Icons.airplanemode_active,
                            color: AppColors.primaryColorLight,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    Text(flight.flightTime),
                    Text(
                      '${flight.stopCount} Stop${flight.stopCount > 1 ? 's' : ''}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      flight.arrivalTime,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      flight.arrivalAirport,
                      style: TextStyle(
                        color: AppColors.subTitleColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
