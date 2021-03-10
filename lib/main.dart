import 'package:dimple/screens/skel_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turtle',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Skel(),
    );
  }
}
