import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Pages/home&tabs/home_page.dart';

void main() => runApp(EcoApp());

class EcoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Eko proTips',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}
