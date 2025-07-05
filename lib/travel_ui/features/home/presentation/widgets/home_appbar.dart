import 'package:custom_uui_design/main.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Explore"),
                Spacer(),
                Icon(Icons.location_on_rounded),
                SizedBox(width: 10),
                Text("Aspen, USA", style: TextStyle(fontSize: 12)),
                SizedBox(width: 10),
                Transform.rotate(
                  angle: 4.65,
                  child: Icon(Icons.navigate_before),
                ),
              ],
            ),
            Text(
              "Aspen",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
