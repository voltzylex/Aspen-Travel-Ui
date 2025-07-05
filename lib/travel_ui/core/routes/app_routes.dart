// GoRouter configuration
import 'package:custom_uui_design/travel_ui/features/home/presentation/pages/home_page.dart';
import 'package:custom_uui_design/travel_ui/travel.dart';
import 'package:go_router/go_router.dart';

final travelRouter = GoRouter(
  routes: [
    GoRoute(path: AppRoutes.splash, builder: (context, state) => TravelUi()),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

class AppRoutes {
  static const String home = '/home';
  static const String splash = '/';
}
