import 'package:flutter/material.dart';
import 'package:jmr_assignment/features/home/data/models/trip_type.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/trip_type_widget.dart';

class TripTypeSelector extends StatefulWidget {
  const TripTypeSelector({super.key});

  @override
  State<TripTypeSelector> createState() => _TripTypeSelectorState();
}

class _TripTypeSelectorState extends State<TripTypeSelector> {
  int selectedWidgetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: TripType.values.map((tripType) {
            int index = TripType.values.indexOf(tripType);
            return TripTypeWidget(
              isSelected: selectedWidgetIndex == index,
              tripType: tripType,
              onTap: () {
                selectedWidgetIndex = index;
                setState(() {});
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
