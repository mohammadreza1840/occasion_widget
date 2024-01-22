import 'package:flutter/material.dart';

class HorizontalWidget extends StatelessWidget {
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

  const HorizontalWidget({
    super.key,
    this.icon,
    required this.title,
    this.titleStyle,
    this.subtitile,
    this.subtitileStyle,
    this.onBoxClick,
    this.onTitleClick,
    this.onSubtitleClick,
    this.boxSize,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBoxClick,
      child: Container(
        decoration: decoration ??
            BoxDecoration(
              color: const Color(0xFF237A65),
              borderRadius: BorderRadius.circular(50),
            ),
        width: boxSize?.width ?? 320,
        height: boxSize?.height ?? 450,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon ?? Container(),
              Column(
                children: [
                  InkWell(
                    onTap: onTitleClick,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: titleStyle ??
                          const TextStyle(
                            color: Colors.white,
                            fontSize: 68,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Kalameh',
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: subtitile != null
                        ? InkWell(
                            onTap: onSubtitleClick,
                            child: Text(
                              subtitile!,
                              textAlign: TextAlign.center,
                              style: subtitileStyle ??
                                  const TextStyle(
                                    color: Colors.white,
                                    fontSize: 38,
                                    height: 1.1,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Kalameh',
                                  ),
                            ),
                          )
                        : Container(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
