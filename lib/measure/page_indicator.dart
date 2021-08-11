import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageIndicatorPainter extends CustomPainter {
  PageIndicatorPainter(
      {required this.pageCount,
      required this.dotRadius,
      required this.dotOutlineThickness,
      required Color dotFillColor,
      required Color dotOutlineColor,
      required this.spacing,
      this.scrollPosition = 0.0,
      required Color indicatorColor})
      : dotFillPaint = Paint()..color = dotFillColor,
        dotOutlinePaint = Paint()..color = dotOutlineColor,
        indicator = Paint()..color = indicatorColor;

  final int pageCount;
  final double dotRadius;
  final double dotOutlineThickness;
  final Paint dotFillPaint;
  final Paint dotOutlinePaint;
  final double spacing;
  final Paint indicator;
  final double scrollPosition;

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);
    final double totalWidth =
        (pageCount * (2 * dotRadius)) + ((pageCount - 1) * spacing);

    _drawDots(canvas, center, totalWidth);
  }

  void drawIndicator(Canvas canvas, Offset canter, double totalWidth) {
    final int pageIndexToLeft = scrollPosition.floor();
    final double leftDotX = (canter.dx - (totalWidth / 2)) +
        (pageIndexToLeft * ((2 * dotRadius) + spacing));
    final double transitionPercent = scrollPosition - pageIndexToLeft;
    final double indicatorLeftX = leftDotX + (transitionPercent * (2 * dotRadius) + spacing);
    final double indicatorRightX = indicatorLeftX + (2 * dotRadius);
    canvas.drawRRect(
        RRect.fromLTRBR(
            indicatorLeftX,
            -dotRadius,
            indicatorRightX,
            dotRadius,
            Radius.circular(dotRadius)),
        indicator);
  }

  void _drawDots(Canvas canvas, Offset center, double totalWidth) {
    Offset dotCenter = center.translate((-totalWidth / 2) + dotRadius, 0);
    for (int i = 0; i < pageCount; i++) {
      _drawDot(canvas, dotCenter);
      dotCenter = dotCenter.translate((2 * dotRadius) + spacing, 0);
    }
  }

  void _drawDot(Canvas canvas, Offset dotCenter) {
    canvas.drawCircle(dotCenter, dotRadius - dotOutlineThickness, dotFillPaint);

    Path outlinePath = Path()
      ..addOval(Rect.fromCircle(center: dotCenter, radius: dotRadius))
      ..addOval(Rect.fromCircle(
          center: dotCenter, radius: dotRadius - dotOutlineThickness))
      ..fillType = PathFillType.evenOdd;
    canvas.drawPath(outlinePath, dotOutlinePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    throw UnimplementedError();
  }
}
