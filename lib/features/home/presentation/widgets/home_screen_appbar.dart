import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';
import 'package:jmr_assignment/core/styles/dimensions.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarBackground,
      toolbarHeight: appBarHeight,
      title: Padding(
        padding: const EdgeInsets.only(top: 24.0, bottom: 24),
        child: Text(
          'Search Flights',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.appBarForeground,
            fontSize: 18,
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 4.0, top: 12.0, bottom: 16),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.appBarForeground,
          ),
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.appBarForeground,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);
}
