import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get _text => theme.textTheme;
  ColorScheme get _colorScheme => theme.colorScheme;

  // text
  TextStyle get h1 => _text.headlineLarge!;
  TextStyle get h2 => _text.headlineMedium!;
  TextStyle get paragraph => _text.titleMedium!;
  TextStyle get buttons => _text.bodyMedium!;

  // colors
  Color get primary => _colorScheme.primary;
  Color get secondary => _colorScheme.secondary;
}
