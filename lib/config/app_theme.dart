import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF471265);

const List<Color> _colorsTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  // NO LO HAGO REQUERIDO PARA QUE NO ME PIDA EN DONDE LO UTILICE, POR ESO LO IGUALO A 0:
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorsTheme.length,
            'Colors must be between 0 and ${_colorsTheme.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsTheme[selectedColor],
      brightness: Brightness.dark,
    );
  }
}
