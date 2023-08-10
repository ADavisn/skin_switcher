import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'color_config.dart';
import 'app_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppTheme(),
      child: MyApp(),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: Provider.of<AppTheme>(context).currentThemeData,
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  final ThemeData myTheme = ThemeData(
    // 在这里定义您的自定义颜色
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue, // 主要颜色
      accentColor: Colors.orange, // 强调颜色
      // 其他颜色
      // ...
    ),
  );

  final ThemeData myTheme1 = ThemeData(
      canvasColor: Config.primarySwatchColor,
      scaffoldBackgroundColor: Config.primarySwatchColor,
      primarySwatch:
          Config.primarySwatchColor); //    splashColor: Colors.transparent,
  // highlightColor: Colors.transparent,
  // primaryColor: Config.primaryColor,
  //primarySwatch: Config.primarySwatchColor,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Skin Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<AppTheme>(
              builder: (context, appTheme, child) =>
                  Text('当前皮肤: ${appTheme.currentThemeData.brightness}'),
            ),
            ElevatedButton(
              onPressed: () {
                AppTheme appTheme =
                    Provider.of<AppTheme>(context, listen: false);
                appTheme.updateThemeData(myTheme1);
              },
              child: const Text('切换到红色皮肤'),
            ),
            ElevatedButton(
              onPressed: () {
                AppTheme appTheme =
                    Provider.of<AppTheme>(context, listen: false);
                appTheme.updateThemeData(ThemeData.light());
              },
              child: const Text('切换到亮色皮肤'),
            ),
            ElevatedButton(
              onPressed: () {
                AppTheme appTheme =
                    Provider.of<AppTheme>(context, listen: false);
                appTheme.updateThemeData(ThemeData.dark());
              },
              child: const Text('切换到暗色背景皮肤'),
            ),
          ],
        ),
      ),
    );
  }
}
