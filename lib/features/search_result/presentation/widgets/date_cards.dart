import 'package:flutter/material.dart';
import 'package:jmr_assignment/features/search_result/domain/models/date_price.dart';

import '../../../../core/styles/app_colors.dart';

class DateCards extends StatefulWidget {
  const DateCards({super.key});
  @override
  State<DateCards> createState() => _DateCardsState();
}

class _DateCardsState extends State<DateCards> {
  final List<DatePrice> dateRanges = [
    DatePrice(
      departureDate: DateTime(2024, 3, 23),
      arrivalDate: DateTime(2024, 3, 24),
      startingPrice: 458,
    ),
    DatePrice(
      departureDate: DateTime(2024, 3, 24),
      arrivalDate: DateTime(2024, 3, 25),
      startingPrice: 598,
    ),
    DatePrice(
      departureDate: DateTime(2024, 3, 25),
      arrivalDate: DateTime(2024, 3, 26),
      startingPrice: 678,
    ),
    DatePrice(
      departureDate: DateTime(2024, 3, 26),
      arrivalDate: DateTime(2024, 3, 27),
      startingPrice: 720,
    ),
  ];
  int selectedDateCardIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        height: 56,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: dateRanges.length,
          itemBuilder: (context, index) {
            final item = dateRanges[index];
            return InkWell(
              onTap: () {
                setState(() {
                  selectedDateCardIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: index == selectedDateCardIndex
                        ? AppColors.primaryColor
                        : AppColors.dividerColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        item.formattedDateRange,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'From AED ${item.startingPrice}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 4);
          },
        ),
      ),
    );
  }
}
