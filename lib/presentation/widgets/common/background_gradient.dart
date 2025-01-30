import 'package:flutter/material.dart';
import 'package:hand_sign_translator/config/theme/app_colors.dart';
import 'package:hand_sign_translator/presentation/widgets/common/%20painters/animation_painter.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return isDarkMode ? const _DarkGradient() : const _LightGradient();
  }
}

class _LightGradient extends StatefulWidget {
  const _LightGradient();

  @override
  State<_LightGradient> createState() => _LightGradientState();
}

class _LightGradientState extends State<_LightGradient>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE0E0E0),
            Color(0xFFEDEDED),
          ],
        ),
      ),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
            size: Size.infinite,
            painter: AnimationPainter(
              _animation.value,
              AppColors.gradientEnd,
            ),
          );
        },
      ),
    );
  }
}

class _DarkGradient extends StatefulWidget {
  const _DarkGradient();

  @override
  State<_DarkGradient> createState() => _DarkGradientState();
}

class _DarkGradientState extends State<_DarkGradient>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller to free resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF1E1E1E),
            Color(0xFF2D2D2D),
          ],
        ),
      ),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return CustomPaint(
            size: Size.infinite,
            painter: AnimationPainter(
              _animation.value,
              AppColors.gradientStart,
            ),
          );
        },
      ),
    );
  }
}
