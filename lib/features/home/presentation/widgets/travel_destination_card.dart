import 'package:flutter/material.dart';
import 'package:jmr_assignment/features/home/domain/models/destination.dart';

class TravelDestinationCard extends StatelessWidget {
  const TravelDestinationCard({super.key, required this.destination});
  final Destination destination;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 226,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: AssetImage(destination.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 24, bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From: AED${destination.price.toString()}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Text(
              '${destination.cabinType} ${destination.tripType}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Text(
              destination.destinationName,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
