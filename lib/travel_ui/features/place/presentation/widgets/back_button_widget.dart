import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:custom_uui_design/main.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.pop(),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(40, 40),
        maximumSize: const Size(40, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: kWhiteColor,
        side: BorderSide(color: kWhiteColor),
        padding: EdgeInsets.zero,
      ),
      child: const Icon(Icons.arrow_back_ios_new, color: kGreyTextColor),
    );
  }
}
