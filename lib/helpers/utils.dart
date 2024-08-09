import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext{
  ColorScheme get colorScheme{
    return Theme.of(this).colorScheme;
  }
}

extension NumberExtension on num{
  EdgeInsets get allPadding{
    return EdgeInsets.all(toDouble());
  }
}
