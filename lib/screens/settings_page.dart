import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Settings Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.back(),
        backgroundColor: Colors.indigo[900],
        child: Icon(FontAwesomeIcons.arrowLeft),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
