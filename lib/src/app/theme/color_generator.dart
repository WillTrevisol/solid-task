import 'dart:math';
import 'package:flutter/material.dart';

/// Color Generator class
class ColorGenerator {

  ///  Animated rainbow color
  static final Animatable<Color?> rainbowColor = TweenSequence<Color?>
  ([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.red,
        end: Colors.blue,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.blue,
        end: Colors.green,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.green,
        end: Colors.yellow,
      ),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.yellow,
        end: Colors.red,
      ),
    ),
  ]);


  /// Will return a random color.
  static Color get() {
    const maxHexNumber = 0xFFFFFFFF;
    const maxHexAlphaNumber = 0xFF;

    return Color(Random().nextInt(maxHexNumber)).withAlpha(maxHexAlphaNumber);
  }
}
