import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/ad_widget.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/home_screen_appbar.dart';
import 'package:jmr_assignment/features/home/presentation/widgets/travel_destinations_widget.dart';

import '../widgets/home_screen_search.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      appBar: const HomeScreenAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenSearch(),
            TravelDestinationsWidget(),
            AdWidget(),
          ],
        ),
      ),
    );
  }
}
