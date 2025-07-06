import 'package:custom_uui_design/main.dart';
import 'package:custom_uui_design/travel_ui/core/routes/app_routes.dart';
import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecommendCard extends StatelessWidget {
  final PlaceDetailsModel place;
  const RecommendCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoutes.place, extra: place),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,

        margin: const EdgeInsets.only(right: 16.0),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: kWhiteBackgroundColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Hero(
                  tag: place.image,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      place.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.12,
                      errorBuilder: (context, error, stackTrace) =>
                          SizedBox.fromSize(
                            size: const Size(double.infinity, 100),
                            child: const Icon(
                              Icons.error,

                              // size: 50.0,
                              color: Colors.red,
                            ),
                          ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -15,
                  right: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2.0,
                    ),
                    decoration: BoxDecoration(
                      color: kGreyTitleColor,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white, width: 2.0),
                    ),
                    child: Text(
                      "4N/5D",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              place.name,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
