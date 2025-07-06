import 'package:custom_uui_design/main.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/widgets/home_appbar.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/widgets/home_categories.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/widgets/home_categories_body.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kHorizontalPadding),
        child: Column(
          children: [
            // Search Bar
            HomeSearchBar(),
            // Tab Buttons
            HomeCategories(),
            // Categories Body
            Expanded(child: SingleChildScrollView(child: HomeCategoriesBody())),
          ],
        ),
      ),
    );
  }
}
