// GoRouter configuration
import 'package:custom_uui_design/travel_ui/features/home/data/places_detail.dart';
import 'package:custom_uui_design/travel_ui/features/home/presentation/pages/home_page.dart';
import 'package:custom_uui_design/travel_ui/features/place/presentation/page/place_detail_page.dart';
import 'package:custom_uui_design/travel_ui/travel.dart';
import 'package:go_router/go_router.dart';

final travelRouter = GoRouter(
  routes: [
    GoRoute(path: AppRoutes.splash, builder: (context, state) => TravelUi()),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.place,
      // pageBuilder: (context, state) {
      //   final placeDetails = state.extra as PlaceDetailsModel?;
      //   return CustomTransitionPage(
      //     child: PlaceDetails(placeDetails: placeDetails!),
      //     transitionsBuilder: (_, animation, __, child) =>
      //         FadeTransition(opacity: animation, child: child),
      //     barrierDismissible: false,
      //     transitionDuration: const Duration(milliseconds: 300),
      //   );
      // },
      builder: (context, state) {
        final placeDetails = state.extra as PlaceDetailsModel?;
        return PlaceDetails(placeDetails: placeDetails!);
      },
    ),
  ],
);

class AppRoutes {
  static const String home = '/home';
  static const String splash = '/';
  static const String place = '/placeDetails';
}
