import 'package:flutter/material.dart';
import 'package:solid_task/src/app/pages/home_page.dart';
import 'package:solid_task/src/app/theme/app_theme.dart';

void main() {
  runApp(Main());
}
/// Main class will return a MaterialApp Widget
class Main extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid Task',
      theme: AppTheme.theme,
      home: HomePage(),
    );
  }
}
