import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:flutter/material.dart';

class HomeCategoriesBody extends StatelessWidget {
  const HomeCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Popular Places
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                "See All",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: placeDetails
                .map(
                  (place) => Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,

                    margin: const EdgeInsets.only(right: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.network(place['image'], fit: BoxFit.cover),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
