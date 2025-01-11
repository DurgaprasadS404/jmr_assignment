import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/features/home/data/models/trip_type.dart';

class TripTypeWidget extends StatelessWidget {
  const TripTypeWidget(
      {super.key,
      required this.isSelected,
      required this.tripType,
      required this.onTap});
  final bool isSelected;
  final TripType tripType;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17.0,),
            child: Center(
              child: Text(
                tripType.toDisplayString(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
