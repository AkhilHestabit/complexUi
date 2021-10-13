import 'package:flutter/material.dart';


class CustomdrawerState extends State with SingleTickerProviderStateMixin {
  final double maxSlides = 255.0;
  late AnimationController animationController;


  void toggle() =>
      animationController.isDismissed ? animationController.
      forward() : animationController.reverse();

  @override
  Widget build(BuildContext context) {
    var drawer = Container(color: Colors.blue,);
    var child = Container(color: Colors.yellow);
    return GestureDetector(
      onTap: toggle,
      child: AnimatedBuilder(animation: animationController,
          builder: (context, _) {
            double slide = maxSlides * animationController.value;
            double scale = 1 - (animationController.value * 0.3);
            return Stack(
              children: <Widget>[
                drawer,
                Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: child,
                )
              ],
            );
          }),
    );
  }
}
