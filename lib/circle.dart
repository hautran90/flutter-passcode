import 'package:flutter/material.dart';

@immutable
class CircleUIConfig {
  final Color borderColor;
  final Color fillColor;
  final double borderWidth;
  final double circleSize;

  const CircleUIConfig(
      {this.borderColor = Colors.white,
      this.borderWidth = 1,
      this.fillColor = Colors.white,
      this.circleSize = 10});
}

class Circle extends StatelessWidget {
  final bool filled;
  final CircleUIConfig circleUIConfig;
  double extraSize = 0;

  Circle(
      {Key key,
      this.filled = false,
      @required this.circleUIConfig,
      this.extraSize = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: extraSize),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          color: filled ? Color(0xff4686d7) : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
              color: circleUIConfig.borderColor,
              width: circleUIConfig.borderWidth)),
    );
  }
}
