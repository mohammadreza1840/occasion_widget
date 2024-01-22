import 'package:flutter/material.dart';
import 'package:occasion_widget/models/horizontal_box.dart';
import 'package:occasion_widget/models/vertical_box.dart';
import 'package:occasion_widget/widget/horizontal_widget.dart';
import 'package:occasion_widget/widget/vertical_widget.dart';

class Occasion extends StatefulWidget {
  final TextDirection? directionality;
  final bool? isScrolabel;
  final VerticalBox verticalBox;
  final HorizontalBox horizontalBox;
  final BoxShadow? horizontalBoxShadow;
  final BoxShadow? verticalBoxShadow;
  final double? spaceBetween;

  const Occasion({
    super.key,
    required this.horizontalBox,
    required this.verticalBox,
    this.directionality,
    this.isScrolabel,
    this.horizontalBoxShadow,
    this.verticalBoxShadow,
    this.spaceBetween,
  });

  @override
  State<Occasion> createState() => _OccasionState();
}

class _OccasionState extends State<Occasion> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(30, 249, 192, 4),
                blurRadius: 100,
                spreadRadius: 10,
                offset: Offset(0, 0),
              ),
            ],
          ),
          width: widget.verticalBox.boxSize?.width ?? size.width,
          height: widget.verticalBox.boxSize?.height ?? 350,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(30, 249, 192, 4),
                  blurRadius: 100,
                  spreadRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            width: widget.horizontalBox.boxSize?.width ?? 320,
            height: widget.horizontalBox.boxSize?.height ?? 450,
          ),
        ),
        VerticalWidget(
          spaceBeetween: widget.spaceBetween,
          isScorlabel: widget.isScrolabel ?? true,
          direction: widget.directionality ?? TextDirection.rtl,
          background: widget.verticalBox.background,
          boxSize: widget.verticalBox.boxSize,
          decoration: widget.verticalBox.decoration,
          hBoxSize: widget.horizontalBox.boxSize,
          children: widget.verticalBox.children,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: HorizontalWidget(
            title: widget.horizontalBox.title,
            boxSize: widget.horizontalBox.boxSize,
            decoration: widget.horizontalBox.decoration,
            icon: widget.horizontalBox.icon,
            onBoxClick: widget.horizontalBox.onBoxClick,
            onSubtitleClick: widget.horizontalBox.onSubtitleClick,
            onTitleClick: widget.horizontalBox.onTitleClick,
            subtitile: widget.horizontalBox.subtitile,
            subtitileStyle: widget.horizontalBox.subtitileStyle,
            titleStyle: widget.horizontalBox.titleStyle,
          ),
        ),
      ],
    );
  }
}
