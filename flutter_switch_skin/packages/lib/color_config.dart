// ignore: file_names
import 'package:flutter/material.dart';

// 全局配置
class Config {
  /// 主题颜色
  static const int _primaryColorValue = 0xFFC40B46; //E5645F
  static const Color primaryColor = Color(_primaryColorValue);
  static const MaterialColor primarySwatchColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFD1E3F6),
      100: Color(0xFFA7C9ED),
      200: Color(0xFF7EB0E4),
      300: Color(0xFF5999DB),
      400: Color(0xFF3683D2),
      500: Color(_primaryColorValue),
      600: Color(0xFF1258A1),
      700: Color(0xFF0d4279),
      800: Color(0xFF092C50),
      900: Color(0xFF041628),
    },
  );

  /// 其他全局配置
}
