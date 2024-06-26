import 'package:flutter/material.dart';

class Animations {
  /// Slide animation from right to left
  /// animation of type double
  static fromLeft(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
          .animate(animation),
      child: child,
    );
  }

  /// Slide animation from top to bottom
  /// animation of type double
  static fromRight(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
          .animate(animation),
      child: child,
    );
  }

  /// Slide animation from top to bottom
  /// animation of type double
  static fromTop(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(0.0, -1.0), end: Offset.zero)
          .animate(animation),
      child: child,
    );
  }

  /// Slide animation from bottom to top
  /// animation of type double
  static fromBottom(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
          .animate(animation),
      child: child,
    );
  }

  /// Slide animation with grow effect
  /// animation of type double
  static grow(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(end: 1.0, begin: 0.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(0.00, 0.50, curve: Curves.linear),
        ),
      ),
      child: child,
    );
  }

  /// Slide animation with grow shrink
  /// animation of type double
  static shrink(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(end: 1.0, begin: 1.2).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(0.50, 1.0, curve: Curves.linear),
        ),
      ),
      child: child,
    );
  }
}
