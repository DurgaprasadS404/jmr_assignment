import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmr_assignment/core/constants/assets.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/cabin_class_picker_field.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/date_picker_field.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/departure_and_destination_card.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/traveler_picker_widget.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/trip_type_selector.dart';
import 'package:jmr_assignment/features/search_result/presentation/screens/search_result_screen.dart';

class HomeScreenSearch extends ConsumerStatefulWidget {
  const HomeScreenSearch({super.key});

  @override
  ConsumerState createState() => _HomeScreenSearchState();
}

class _HomeScreenSearchState extends ConsumerState<HomeScreenSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  Assets.homeBgImageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 23),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 19),
              child: Text(
                "Let’s start your trip",
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: TripTypeSelector(),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 19),
              const DepartureAndDestinationCard(),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(
                    child: DatePickerField(
                      labelText: 'Departure',
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: DatePickerField(
                      labelText: 'Return',
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(child: TravelersPickerField()),
                  SizedBox(width: 8),
                  Expanded(child: CabinClassPickerField())
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchResultScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Search Flights",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
