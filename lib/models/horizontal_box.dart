import 'package:flutter/material.dart';

class HorizontalBox {
  final Widget? icon;
  final String title;
  final TextStyle? titleStyle;
  final String? subtitile;
  final TextStyle? subtitileStyle;
  final VoidCallback? onBoxClick;
  final VoidCallback? onTitleClick;
  final VoidCallback? onSubtitleClick;
  final Size? boxSize;
  final BoxDecoration? decoration;
  const HorizontalBox(
      {this.icon,
      required this.title,
      this.titleStyle,
      this.subtitile,
      this.subtitileStyle,
      this.onBoxClick,
      this.onTitleClick,
      this.onSubtitleClick,
      this.boxSize,
      this.decoration});
}
