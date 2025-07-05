// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CPopScope<T> extends StatelessWidget {
  final Widget child;
  const CPopScope({
    super.key,

    required this.child,
    this.onPopInvokedWithResult,
  });

  /// Only Trigger when Using Device Back Button in (android)
  final void Function(bool didPop, T? result)? onPopInvokedWithResult;
  // const CScaffold.withDefaultAppBar({super.key, required this.body})
  //   : appBar = null,
  //     canPop = true;

  @override
  Widget build(BuildContext context) {
    return PopScope<T>(
      canPop: Platform.isAndroid ? true : false,
      onPopInvokedWithResult: (didPop, result) async {
        // if (onPopInvokedWithResult != null) {
        onPopInvokedWithResult!(didPop, result);
        // }
        if (didPop) return;
        context.pop(result);
      },
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (Platform.isIOS && details.delta.dx > 10) {
            // onPopInvokedWithResult?.call(true, null);

            context.pop();
          }
        },
        child: Scaffold(body: child),
      ),
    );
  }
}
