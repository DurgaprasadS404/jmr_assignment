import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/constants/assets.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            children: [
              Text(
                'Flight & Hotel Packages',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: const DecorationImage(
              image: AssetImage(Assets.packagesImageAsset),
              fit: BoxFit.cover,
            ),
          ),
          height: 313,
          width: 396,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
