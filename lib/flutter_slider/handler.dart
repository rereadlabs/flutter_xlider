import 'package:flutter/material.dart';
import 'package:flutter_xlider/models/slider_handler.dart';

class MakeHandler extends StatelessWidget {
  const MakeHandler({
    required this.id,
    this.handlerData,
    required this.visibleTouchArea,
    required this.width,
    required this.height,
    required this.animation,
    required this.axis,
    this.handlerIndex,
    required this.touchSize,
    this.rtl = false,
    this.rangeSlider = false,
  });

  final double width;
  final double height;
  final GlobalKey id;
  final FlutterSliderHandler? handlerData;
  final bool visibleTouchArea;
  final Animation animation;
  final Axis axis;
  final int? handlerIndex;
  final bool rtl;
  final bool rangeSlider;
  final double touchSize;

  @override
  Widget build(BuildContext context) {
    final touchOpacity = (visibleTouchArea == true) ? 1.0 : 0.0;
    final localHeight = height + (touchSize * 2);
    final localWidth = width + (touchSize * 2);

    var hIcon =
        (axis == Axis.horizontal) ? Icons.chevron_right : Icons.expand_more;
    if (rtl && !rangeSlider) {
      hIcon =
          (axis == Axis.horizontal) ? Icons.chevron_left : Icons.expand_less;
    }

    final handler = handlerData ??
        FlutterSliderHandler(
            child: handlerIndex == 2
                ? Icon(
                    (axis == Axis.horizontal)
                        ? Icons.chevron_left
                        : Icons.expand_less,
                    color: Colors.black45)
                : Icon(hIcon, color: Colors.black45),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  spreadRadius: 0.2,
                  offset: Offset(0, 1))
            ], color: Colors.white, shape: BoxShape.circle));

    return Center(
      child: SizedBox(
        key: id,
        width: localWidth,
        height: localHeight,
        child: Stack(children: <Widget>[
          Opacity(
            opacity: touchOpacity,
            child: Container(
              color: Colors.black12,
              child: Container(),
            ),
          ),
          Center(
            child: ScaleTransition(
              scale: animation as Animation<double>,
              child: Opacity(
                opacity: handler.opacity,
                child: Container(
                  alignment: Alignment.center,
                  foregroundDecoration: handler.foregroundDecoration,
                  decoration: handler.decoration,
                  transform: handler.transform,
                  width: width,
                  height: height,
                  child: handler.child,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
