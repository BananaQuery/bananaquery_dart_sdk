import 'package:flutter/material.dart';

class SingleTargetChart extends StatelessWidget {
  const SingleTargetChart(
      {super.key, required this.value, required this.target});

  final double value;
  final double target;

  int get percentageCovered => (value / target * 100).round();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: percentageCovered,
          child: Container(
            color: Colors.black87,
          ),
        ),
        Expanded(
          flex: 100 - percentageCovered,
          child: Container(
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
