import 'package:flutter/material.dart';

class CustomFadeTransition extends StatefulWidget {
  const CustomFadeTransition({
    super.key,
    this.animationDuration = const Duration(seconds: 3),
    this.startDelay = const Duration(seconds: 0),
    this.begin = Alignment.bottomLeft,
    this.end = Alignment.bottomRight,
    required this.child,
  });
  final Duration animationDuration;
  final Duration startDelay;
  final Widget child;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  @override
  State<CustomFadeTransition> createState() => _CustomFadeTransitionState();
}

class _CustomFadeTransitionState extends State<CustomFadeTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _startAnimationWithDelay();
  }

  _startAnimationWithDelay() async {
    await Future.delayed(widget.startDelay);
    _controller.forward();
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
            begin: widget.begin,
            end: widget.end,
          ).createShader(bounds),
          blendMode: BlendMode.dstIn,

          child: Opacity(opacity: _animation.value, child: widget.child),
        );
      },
    );
  }
}
