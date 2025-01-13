import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/features/search_result/presentation/widgets/info_chip.dart';

class FlightAdditionalDetails extends StatelessWidget {
  const FlightAdditionalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          InfoChip(
              infoText: 'Cheapest',
              chipColor: AppColors.primaryColor,
              textColor: AppColors.primaryColorLight),
          const SizedBox(width: 16),
          const InfoChip(
              infoText: 'Refundable',
              chipColor: Colors.blueAccent,
              textColor: Colors.blue),
          const Spacer(),
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return <String>['A', 'B', 'C'].map((String value) {
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
                  'Flight Details',
                  style: TextStyle(
                    color: AppColors.accentColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.accentColor,
                ),
              ],
            ),
            onSelected: (item) {},
          ),
        ],
      ),
    );
  }
}
