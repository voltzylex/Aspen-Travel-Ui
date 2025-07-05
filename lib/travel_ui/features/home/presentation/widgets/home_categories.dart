import 'package:custom_uui_design/main.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  static const List<String> categories = [
    "Location",
    "Hotels",
    "Food",
    "Adventure",
    "Shopping",
    "Nightlife",
    "Events",
  ];

  @override
  Widget build(BuildContext context) {
    final controller = HomeController(); // Singleton, so safe to call

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ValueListenableBuilder<int>(
        valueListenable: controller.index,
        builder: (context, value, _) {
          return Row(
            children: categories.map((category) {
              final int currentIndex = categories.indexOf(category);
              final bool isSelected = value == currentIndex;

              return GestureDetector(
                onTap: () {
                  controller.index.value = currentIndex;
                  // Optionally, you can add navigation or other actions here
                },
                child: AnimatedContainer(
                  duration: Durations.medium1,
                  margin: const EdgeInsets.only(right: 10, top: 32),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? kPrimaryColor.withValues(alpha: .05)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      fontSize: 14,
                      color: !isSelected ? kGreyColor : kPrimaryColor,
                      fontWeight: isSelected
                          ? FontWeight.w900
                          : FontWeight.w400,
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
