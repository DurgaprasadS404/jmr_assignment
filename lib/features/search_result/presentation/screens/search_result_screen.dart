import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/core/styles/dimensions.dart';
import 'package:jmr_assignment/features/search_result/presentation/widgets/available_flights_list.dart';
import 'package:jmr_assignment/features/search_result/presentation/widgets/date_cards.dart';
import 'package:jmr_assignment/features/search_result/presentation/widgets/flight_detail_card.dart';

class SearchResultScreen extends ConsumerStatefulWidget {
  const SearchResultScreen({super.key});

  @override
  ConsumerState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends ConsumerState<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: AppBar(
        title: Text(
          'Ezy Travel',
          style: TextStyle(
            color: AppColors.appBarForeground,
            fontSize: 18,
          ),
        ),
        backgroundColor: AppColors.appBarBackground,
        toolbarHeight: appBarHeight,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.primaryColorLight,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const FlightDetailsCard(),
              const SizedBox(height: 16),
              DateCards(),
              AvailableFlightsList(),
            ],
          ),
        ),
      ),
    );
  }
}
