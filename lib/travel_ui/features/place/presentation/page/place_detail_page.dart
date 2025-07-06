import 'dart:developer';

import 'package:custom_uui_design/main.dart';
import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/widgets/back_button_widget.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/widgets/like_button.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/widgets/place_image_widget.dart';
import 'package:custom_uui_design/travel_ui/shared/widgets/c_pop_scope.dart';
import 'package:flutter/material.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({super.key, required this.placeDetails});
  final PlaceDetailsModel placeDetails;

  @override
  Widget build(BuildContext context) {
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
