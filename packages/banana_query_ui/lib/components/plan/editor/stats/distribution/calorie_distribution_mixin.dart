import 'dart:math';

import 'package:flutter/material.dart';

class BubbleMapper {
  final double width;
  final double height;
  final List<Bubble> bubbles = [];

  BubbleMapper({required this.width, required this.height});

  Point<double> addBubble(String label, double radius) {
    Random rng = Random();
    while (true) {
      double x = rng.nextDouble() * (width - 2.5*radius) + radius;
      double y = rng.nextDouble() * (height - 2.5*radius) + radius;
      if (!doesOverlap(x, y, radius)) {
        bubbles.add(Bubble(label, x, y, radius));
        return Point(x, y);
      }
    }
  }

  bool doesOverlap(double x, double y, double radius) {
    return bubbles.any((bubble) {
      double distance = sqrt(pow(x - bubble.x, 2) + pow(y - bubble.y, 2));
      return distance < radius + bubble.radius;
    });
  }
}

class Bubble {
  final String label;
  final double x;
  final double y;
  final double radius;

  Bubble(this.label, this.x, this.y, this.radius);
}

mixin CalorieDistributionMixin {
  Color getColor(double calories) {
    var green = 0x0000FF;
    var red = 0xFF0000;
    double maxCalories = 1000;
    var delta = (red - green) / maxCalories;
    int opacityMask = 0xFF000000;
    int computedColor = (calories * delta).clamp(green, red).toInt();
    return Color(opacityMask + computedColor);
  }

  double getSize(double calories) {
    double maxCalories = 1000;
    double maxSize = 50;

    return ((calories * maxSize)/maxCalories).clamp(2, 100);
  }
}