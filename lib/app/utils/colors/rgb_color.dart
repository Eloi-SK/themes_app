import 'package:flutter/material.dart';

class RbgColor {
  final int r;
  final int g;
  final int b;

  RbgColor({
    required this.r,
    required this.g,
    required this.b
  });

  factory RbgColor.fromColor(Color color) => RbgColor(r: color.red, g: color.green, b: color.blue);
}