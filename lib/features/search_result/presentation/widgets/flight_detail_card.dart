import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/constants/assets.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';

class FlightDetailsCard extends StatefulWidget {
  const FlightDetailsCard({super.key});

  @override
  State<FlightDetailsCard> createState() => _FlightDetailsCardState();
}

class _FlightDetailsCardState extends State<FlightDetailsCard> {
  String _currentItemSelected = 'Price';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          bottom: 4.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 4),
            Text(
              'BLR - Bengaluru to DXB - Dubai',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.subTitleColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            // Departure and Return details
            Text(
              'Departure: Sat, 23 Mar - Return: Sat, 23 Mar',
              style: TextStyle(
                color: AppColors.subTitleColor,
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '(Round Trip)',
                  style: TextStyle(
                    color: AppColors.accentColor,
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Modify Search',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.primaryColor,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: AppColors.dividerColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  PopupMenuButton<String>(
                    itemBuilder: (context) {
                      return <String>['Price', 'Duration', 'Airlines']
                          .map((String value) {
                        return PopupMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          _currentItemSelected,
                          style: TextStyle(
                            color: AppColors.buttonTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                      ],
                    ),
                    onSelected: (item) {
                      setState(() {
                        _currentItemSelected = item;
                      });
                    },
                  ),
                  const Spacer(),
                  Text(
                    'Non-Stop',
                    style: TextStyle(
                      color: AppColors.buttonTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton.icon(
                    icon: Image.asset(
                      Assets.filterIconImageAsset,
                      color: AppColors.buttonIconColor,
                      width: 17,
                      height: 17,
                    ),
                    iconAlignment: IconAlignment.end,
                    label: Text(
                      'Filter',
                      style: TextStyle(
                        color: AppColors.buttonTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
