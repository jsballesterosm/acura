import 'package:flutter/material.dart';

class HeaderAcura extends StatelessWidget {
  const HeaderAcura({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final lapiz = Paint();
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // .stroke;
    lapiz.strokeWidth = 2;

    final path = new Path();
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.height, size.height * 0.25);
    path.lineTo(size.height, 0);
    path.lineTo(0,0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
  
}

