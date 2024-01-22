import 'package:flutter/material.dart';

class VerticalBox {
  final Widget? background;
  final List<Widget> children;
  final BoxDecoration? decoration;
  final Size? boxSize;
  const VerticalBox({
    this.background,
    required this.children,
    this.decoration,
    this.boxSize,
  });
}
