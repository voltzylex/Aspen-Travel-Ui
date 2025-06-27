import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AspenFadeImage extends StatefulWidget {
  const AspenFadeImage({super.key});

  @override
  State<AspenFadeImage> createState() => _AspenFadeImageState();
}

class _AspenFadeImageState extends State<AspenFadeImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, value) {
        return ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Colors.white, Colors.transparent],
            stops: [_animation.value, _animation.value + 0.01],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          blendMode: BlendMode.dstIn,

          child: Opacity(
            opacity: _animation.value,
            child: SvgPicture.asset("assets/travel/aspen.svg", width: 300),
          ),
        );
      },
    );
  }
}
