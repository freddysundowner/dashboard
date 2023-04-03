import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'grid_dashboard.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        )
      ),
      home: GridDashboard(),
    );
  }
}
