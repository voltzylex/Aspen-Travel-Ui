import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/widgets/place_card_widget.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/widgets/recommend_card.dart';
import 'package:flutter/material.dart';

class HomeCategoriesBody extends StatelessWidget {
  const HomeCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            TextButton(onPressed: () {}, child: const Text("See All")),
          ],
        ),
        SizedBox(height: 10),
        // Carousel/List
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // padding: const EdgeInsets.only(left: 16.0),
            // itemCount: placeDetails.length,
            children: placeDetails.map((place) {
              // log("Place Details: $place");
              return PlaceCard(place: PlaceDetailsModel.fromMap(place));
            }).toList(),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Recommended",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
        // Recommended Cards
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // padding: const EdgeInsets.only(left: 16.0),
            // itemCount: placeDetails.length,
            children: recommendedPlaces.map((place) {
              // log("Place Details: $place");
              return RecommendCard(place: PlaceDetailsModel.fromMap(place));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
