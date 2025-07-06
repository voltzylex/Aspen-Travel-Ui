import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _localExpandableTextProvider = StateProvider.autoDispose<bool>(
  (ref) => false,
);

class ExpandableText extends ConsumerWidget {
  final String text;
  final TextStyle? style;

  const ExpandableText({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final placeDetailProvider = StateProvider<bool>((ref) {
    //   return false;
    // });
    final isExpanded = ref.watch(_localExpandableTextProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        final span = TextSpan(text: text, style: style);
        final tp = TextPainter(
          text: span,
          maxLines: null,
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
        );

        tp.layout(maxWidth: constraints.maxWidth);
        final lineCount = tp.computeLineMetrics().length;

        final shouldShowReadMore = lineCount > 3;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: style,
              maxLines: isExpanded ? 10 : 3,
              overflow: TextOverflow.ellipsis,
            ),
            if (shouldShowReadMore)
              GestureDetector(
                onTap: () =>
                    ref.read(_localExpandableTextProvider.notifier).state =
                        !isExpanded, // Toggle the expanded state
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      isExpanded ? 'Show Less' : 'Read More',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
