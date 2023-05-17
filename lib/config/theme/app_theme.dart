import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 95, 46, 173);

const List<Color> colorThemes = [
  _customColor,
  Colors.blue,
  Colors.yellow,
  Colors.teal,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= colorThemes.length - 1,
            'Colors mutr be between 0 and ${colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: colorThemes[selectedColor],
        // brightness: Brightness.dark
    );
  }
}
