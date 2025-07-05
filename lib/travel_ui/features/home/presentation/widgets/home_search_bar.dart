import 'package:custom_uui_design/main.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shadowColor: WidgetStatePropertyAll(Colors.transparent),
      surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      backgroundColor: WidgetStatePropertyAll(
        kPrimaryColor.withValues(alpha: 0.1),
      ),
      padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      ),
      hintText: "Find things to do",
      leading: Icon(Icons.search, color: kGreyColor),
    );
  }
}
