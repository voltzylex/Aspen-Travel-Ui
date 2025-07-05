import 'package:custom_uui_design/travel_ui/core/routes/app_routes.dart';
import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlaceCard extends StatelessWidget {
  final PlaceDetailsModel place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoutes.place, extra: place),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        margin: const EdgeInsets.only(right: 16.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Hero(
                tag: place.image,
                child: Image.network(
                  place.image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey.shade300,
                    alignment: Alignment.center,
                    child: const Icon(Icons.broken_image, size: 40),
                  ),
                ),
              ),
            ),

            // Overlay content
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.name,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          "⭐ ${place.rating}",
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Spacer(),
                        Icon(
                          place.favorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
