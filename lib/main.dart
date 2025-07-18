import 'package:custom_uui_design/travel_ui/core/routes/app_routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => ProviderScope(child: const MainApp()),
    ),
  );
}

const kPrimaryColor = Color(0xff196EEE);
const kWhiteColor = Color(0xffffffff);
const kWhiteBackgroundColor = Color(0xffF4F4F4);
const kGreyColor = Color(0xffB8B8B8);
const kHorizontalPadding = 20.0;
const kGreyTitleColor = Color(0xff4D5652);
const kGreyTextColor = Color(0xffB8B8B8);
const kPriceColor = Color(0xff2DD7A4);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      // showSemanticsDebugger: true,
      routerConfig: travelRouter,

      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(
          primary: kPrimaryColor,
          seedColor: kPrimaryColor,
        ),
        scaffoldBackgroundColor: kWhiteColor,
        iconTheme: IconThemeData(color: kPrimaryColor),
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    );
  }
}
