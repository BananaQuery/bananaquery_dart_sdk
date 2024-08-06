import 'package:flutter/material.dart';

class BubbleContainer extends StatelessWidget {
  const BubbleContainer({Key? key,  this.color, this.child }) : super(key: key);

  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 10,
              margin: const EdgeInsets.only(left: 35.0),
              alignment: Alignment.topLeft,
              child: CustomPaint(painter: _BubbleArrow(color: color),),
            )
          ],
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: child,
          ),
        )
      ],
    );
  }

}

class _BubbleArrow extends CustomPainter {
  _BubbleArrow({ this.color });

  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = color ?? Colors.transparent;
    var path = Path();


    path.lineTo(-5, 10);
    path.lineTo(5, 10);
    path.lineTo(0, 0);
    path = path.shift(Offset(-size.width/3, 00));
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}