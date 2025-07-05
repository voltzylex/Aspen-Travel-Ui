import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/widgets/place_card_widget.dart';
import 'package:flutter/material.dart';

class HomeCategoriesBody extends StatelessWidget {
  const HomeCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            // itemBuilder: (context, index) {
            //   log("Place Details: ${placeDetails[index]}");
            //   final place = placeDetails[index];
            //   return PlaceCard(place: PlaceDetailsModel.fromMap(place));
            // },
          ),
        ),
      ],
    );
  }
}
