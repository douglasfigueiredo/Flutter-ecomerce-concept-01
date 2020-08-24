import 'package:flutter/material.dart';

import 'pages/home/home.dart';
import 'shared/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final appName = 'eCommerce Concept 01';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: AppTheme.geTheme(context),
      home: HomePage(),
    );
  }
}
