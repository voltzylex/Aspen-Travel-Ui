import 'dart:developer';

import 'package:custom_uui_design/main.dart';
import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:custom_uui_design/travel_ui/shared/widgets/c_pop_scope.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                  fit: StackFit.loose,
                  children: [
                    Hero(
                      tag: placeDetails.image,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          // borderRadius: BorderRadius.circular(50.0),
                        ),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            placeDetails.image,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(
                                  color: Colors.grey.shade300,
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.broken_image,
                                    size: 40,
                                  ),
                                ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          context.pop();
                        },
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
