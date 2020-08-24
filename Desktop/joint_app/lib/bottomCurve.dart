import 'package:flutter/material.dart';

const blue = const Color(0xFF60EDFF);

class BottomCurve extends StatelessWidget {
  const BottomCurve({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(size.width, size.height);

    path.moveTo(size.width, size.height);
    path.lineTo(size.width * 0.15, size.height);

    path.quadraticBezierTo(size.width * 0.15, size.height * 0.93,
        size.width * 0.3, size.height * 0.85);

    path.quadraticBezierTo(size.width * 0.421, size.height * 0.79,
        size.width * 0.7, size.height * 0.75);

    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.73, size.width, size.height * 0.68);

    //path.lineTo(size.width, size.height * 0.68);

    path.close();

    paint.color = blue;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
