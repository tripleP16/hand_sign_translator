import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:hand_sign_translator/config/theme/app_colors.dart';

class DarkGradientPainter extends CustomPainter {
  final double factorArcLength;
  static const double _baseRadius = 3;
  static const double _strokeWidth = 2.0;

  const DarkGradientPainter(this.factorArcLength);

  @override
  void paint(Canvas canvas, Size size) {
    final List<ArcConfig> arcsConfig = _createArcsConfig(size);
    _drawArcs(canvas, arcsConfig);
  }

  List<ArcConfig> _createArcsConfig(Size size) {
    final baseCenter = Offset(size.width / 2, size.height / 3);
    final radius = math.min(size.width, size.height) / _baseRadius;

    return [
      ArcConfig(
        center: baseCenter,
        radius: radius,
        sweepAngle: math.pi / 2,
        color: AppColors.gradientStart,
      ),
      ArcConfig(
        center: Offset(baseCenter.dx, baseCenter.dy + 15),
        radius: radius,
        sweepAngle: math.pi / 2 + 0.025,
        color: AppColors.gradientStart.withOpacity(0.8),
      ),
      ArcConfig(
        center: Offset(baseCenter.dx, baseCenter.dy + 25),
        radius: radius,
        sweepAngle: math.pi / 2 + 0.05,
        color: AppColors.gradientStart.withOpacity(0.6),
      ),
      ArcConfig(
        center: Offset(baseCenter.dx, baseCenter.dy + 35),
        radius: radius,
        sweepAngle: math.pi / 2 + 0.10,
        color: AppColors.gradientStart.withOpacity(0.4),
      ),
      ArcConfig(
        center: Offset(baseCenter.dx, baseCenter.dy + 45),
        radius: radius,
        sweepAngle: math.pi / 2 + 0.15,
        color: AppColors.gradientStart.withOpacity(0.2),
      ),
      ArcConfig(
        center: Offset(baseCenter.dx, baseCenter.dy + 55),
        radius: radius,
        sweepAngle: math.pi / 2 + 0.25,
        color: AppColors.gradientStart.withOpacity(0.1),
      ),
    ];
  }

  void _drawArcs(Canvas canvas, List<ArcConfig> arcsConfig) {
    for (final config in arcsConfig) {
      final paint = Paint()
        ..color = config.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = _strokeWidth;

      final rect = Rect.fromCircle(
        center: config.center,
        radius: config.radius,
      );

      canvas.drawArc(
        rect,
        math.pi,
        config.sweepAngle * factorArcLength,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class ArcConfig {
  final Offset center;
  final double radius;
  final double sweepAngle;
  final Color color;

  const ArcConfig({
    required this.center,
    required this.radius,
    required this.sweepAngle,
    required this.color,
  });
}
