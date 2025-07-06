import 'dart:developer';

import 'package:custom_uui_design/main.dart';
import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/widgets/back_button_widget.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/widgets/expandable_text.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/widgets/like_button.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/widgets/place_image_widget.dart';
import 'package:custom_uui_design/travel_ui/shared/widgets/c_pop_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({super.key, required this.placeDetails});
  final PlaceDetailsModel placeDetails;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> facilities = [
      {"name": "Wifi", "icon": "assets/travel/wifi.svg"},
      {"name": "Dinner", "icon": "assets/travel/food.svg"},
      {"name": "Pool", "icon": "assets/travel/shower.svg"},

      {"name": "2 Tub", "icon": "assets/travel/tub.svg"},
    ];
    return CPopScope(
      onPopInvokedWithResult: (didPop, result) {
        log("Pop Invoked: $didPop, Result: $result");
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kHorizontalPadding),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    PlaceImage(imageUrl: placeDetails.image),
                    const Positioned(
                      top: 12,
                      left: 12,
                      child: BackButtonWidget(),
                    ),
                    const Positioned(
                      bottom: -20,
                      right: 24,
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: LikeButton(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Title Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      placeDetails.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Show Map",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    const SizedBox(width: 4),
                    Text(
                      "${placeDetails.rating} (345} reviews)",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpandableText(text: placeDetails.description),
                        SizedBox(height: 20),
                        Text(
                          "Facilities",
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: facilities.length,
                            itemBuilder: (context, index) {
                              final facility = facilities[index];
                              return Container(
                                width: MediaQuery.sizeOf(context).width * 0.19,
                                margin: const EdgeInsets.only(right: 16),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: kPrimaryColor.withValues(alpha: 0.05),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      facility['icon'],
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      facility['name'],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          margin: const EdgeInsets.only(bottom: 20),
          // color: kPrimaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Text(
                    "\$${10}",
                    style: const TextStyle(
                      color: kPriceColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  minimumSize: Size(MediaQuery.sizeOf(context).width * 0.5, 55),
                ),
                child: Row(
                  children: [
                    Text(
                      "Book Now",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.arrow_forward_outlined,
                      color: kWhiteColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
