import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  const InfoChip(
      {super.key,
      required this.infoText,
      required this.chipColor,
      required this.textColor});
  final String infoText;
  final Color chipColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: chipColor),
        borderRadius: BorderRadius.circular(9),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        infoText,
        style: TextStyle(fontSize: 9, color: textColor),
      ),
    );
  }
}
