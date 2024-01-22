import 'package:flutter/material.dart';

class VerticalWidget extends StatelessWidget {
  final Widget? background;
  final List<Widget> children;
  final BoxDecoration? decoration;
  final Size? boxSize;
  final TextDirection direction;
  final Size? hBoxSize;
  final bool isScorlabel;
  final double? spaceBeetween;

  const VerticalWidget({
    super.key,
    this.background,
    required this.children,
    this.decoration,
    this.boxSize,
    required this.direction,
    this.hBoxSize,
    required this.isScorlabel,
    this.spaceBeetween,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    if (isScorlabel) {
      widgets.add(SizedBox(
        width: spaceBeetween ?? 50,
      ));
      for (var wid in children) {
        widgets.add(AspectRatio(
          aspectRatio: 3 / 4,
          child: wid,
        ));
        widgets.add(SizedBox(
          width: spaceBeetween ?? 50,
        ));
      }
      widgets.add(SizedBox(
        width: spaceBeetween ?? 50,
      ));
    } else {
      widgets.addAll(children.map((e) => AspectRatio(
            aspectRatio: 3 / 4,
            child: e,
          )));
    }

    return Container(
      decoration: decoration,
      width: boxSize?.width ?? double.infinity,
      height: boxSize?.height ?? 350,
      child: Stack(
        children: [
          background ?? Container(),
          Directionality(
            textDirection: direction == TextDirection.ltr
                ? TextDirection.rtl
                : TextDirection.ltr,
            child: isScorlabel
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          0,
                          35,
                          (hBoxSize?.width ?? 320) +
                              (num.parse((spaceBeetween ?? 40).toString())),
                          35),
                      child: Row(
                        children: widgets,
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.fromLTRB(
                        40, 35, (hBoxSize?.width ?? 320) + 60, 35),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widgets,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
