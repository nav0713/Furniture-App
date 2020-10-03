import 'package:flutter/material.dart';

class TransitionAnimation extends PageRouteBuilder {
  final Widget widget;
  TransitionAnimation({this.widget})
      : super(
            transitionDuration: Duration(milliseconds: 700),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInExpo);
              return FadeTransition(
                opacity: animation,
                child: child,
              );

              /*SIZE TRANSITION EFFECT*/
              // SizeTransition(
              //   sizeFactor: animation,
              //   child: child,
              // );

              // FadeTransitionScaleTransitionSizeTransitionSilverFadeTransitionCupertinoPageTransition
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
