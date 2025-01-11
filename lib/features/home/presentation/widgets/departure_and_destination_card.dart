import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/constants/assets.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';

class DepartureAndDestinationCard extends StatefulWidget {
  const DepartureAndDestinationCard({super.key});

  @override
  State<DepartureAndDestinationCard> createState() =>
      _DepartureAndDestinationCardState();
}

class _DepartureAndDestinationCardState
    extends State<DepartureAndDestinationCard> {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  void swapLocations() {
    setState(() {
      String temp = fromController.text;
      fromController.text = toController.text;
      toController.text = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 18, top: 8, bottom: 12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  TextField(
                    controller: fromController,
                    decoration: InputDecoration(
                      labelText: 'From',
                      prefixIcon: Transform.rotate(
                        angle: 3.14 / 3.7, // Rotate by 90 degrees (pi / 2)
                        child: Icon(
                          Icons.flight,
                          color: AppColors.primaryColorLight,
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 54.0),
                    child: Container(
                      height: 2.0, // Divider height
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.primaryColorLight,
                            Colors.transparent
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    controller: toController,
                    decoration: InputDecoration(
                      labelText: 'To',
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: AppColors.primaryColorLight,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
            IconButton.filledTonal(
              onPressed: swapLocations,
              icon: Image.asset(Assets.exchangeImageAsset),
            ),
          ],
        ),
      ),
    );
  }
}
