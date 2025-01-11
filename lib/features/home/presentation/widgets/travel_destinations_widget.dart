import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/constants/assets.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/features/home/domain/models/destination.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/travel_destination_card.dart';

class TravelDestinationsWidget extends StatefulWidget {
  const TravelDestinationsWidget({super.key});

  @override
  State<TravelDestinationsWidget> createState() =>
      _TravelDestinationsWidgetState();
}

class _TravelDestinationsWidgetState extends State<TravelDestinationsWidget> {
  String selectedDestination = 'Dubai';
  List<String> destinationOptions = ['Dubai', 'Qatar', 'Oman'];

  // Mock data for destinations
  List<Destination> destinations = [
    Destination(
      imagePath: Assets.saudiImageAsset,
      price: 867.0,
      tripType: 'Round Trip',
      cabinType: 'Economy',
      destinationName: 'Saudi Arabia',
    ),
    Destination(
      imagePath: Assets.kuwaitImageAsset,
      price: 867.0,
      tripType: 'One Way Trip',
      cabinType: 'Business',
      destinationName: 'Saudi Arabia',
    ),
    Destination(
      imagePath: Assets.saudiImageAsset,
      price: 867.0,
      tripType: 'Round Trip',
      cabinType: 'Economy',
      destinationName: 'Saudi Arabia',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Travel Inspirations',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DropdownButton<String>(
                value: selectedDestination,
                onChanged: (newValue) {
                  setState(() {
                    selectedDestination = newValue!;
                  });
                },
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.primaryColor,
                ),
                items: destinationOptions
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 313,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (context, index) {
              Destination destination = destinations[index];
              return TravelDestinationCard(destination: destination);
            },
          ),
        ),
      ],
    );
  }
}
