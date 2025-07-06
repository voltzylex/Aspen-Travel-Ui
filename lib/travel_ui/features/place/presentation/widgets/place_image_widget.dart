import 'package:colorgram/colorgram.dart';
import 'package:flutter/material.dart';

class PlaceImage extends StatefulWidget {
  final String imageUrl;
  const PlaceImage({super.key, required this.imageUrl});

  @override
  State<PlaceImage> createState() => _PlaceImageState();
}

class _PlaceImageState extends State<PlaceImage>
    with SingleTickerProviderStateMixin {
  late Future<List<CgColor>> _colorsFuture;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _colorsFuture = extractColor(Image.network(widget.imageUrl).image, 4);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
      reverseDuration: const Duration(seconds: 2),
    )..repeat();

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color _interpolateColors(List<CgColor> colors, double t) {
    if (colors.length < 2) return Colors.grey;

    int index = (t * (colors.length - 1)).floor();
    int nextIndex = (index + 1) % colors.length;
    double localT = (t * (colors.length - 1)) % 1;

    final c1 = colors[index];
    final c2 = colors[nextIndex];

    return Color.lerp(
      Color.fromARGB(255, c1.r, c1.g, c1.b),
      Color.fromARGB(255, c2.r, c2.g, c2.b),
      localT,
    )!;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CgColor>>(
      future: _colorsFuture,
      builder: (context, snapshot) {
        final colors = snapshot.data;
        return Hero(
          tag: widget.imageUrl,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              final shadowColor = (colors != null && colors.length > 1)
                  ? _interpolateColors(colors, _animation.value)
                  : null;

              return Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          shadowColor?.withOpacity(0.3) ?? Colors.transparent,
                      blurRadius: 30,
                      offset: const Offset(0, 10),
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey.shade300,
                      alignment: Alignment.center,
                      child: const Icon(Icons.broken_image, size: 40),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
