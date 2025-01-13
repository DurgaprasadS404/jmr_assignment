import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';

class DottedDivider extends StatelessWidget {
  const DottedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: List.generate(
          60,
          (index) => Expanded(
            child: Container(
              height: 1,
              color:
                  index % 2 == 0 ? Colors.transparent : AppColors.dividerColor,
            ),
          ),
        ),
      ),
    );
  }
}
