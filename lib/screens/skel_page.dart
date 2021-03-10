import 'package:dimple/screens/create_habit_page.dart';
import 'package:dimple/screens/home_page.dart';
import 'package:dimple/screens/all_habits_page.dart';
import 'package:dimple/screens/settings_page.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Skel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo[900],
          child: Icon(
            FontAwesomeIcons.plus,
            color: Colors.grey[100],
          ),
          onPressed: () {
            Get.to(CreateHabitPage());
          },
        ),
        body: HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AllHabitsPage()));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            }
          },
          iconSize: 20,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          selectedItemColor: Colors.grey[800],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey[800],
          items: [
            BottomNavigationBarItem(
              tooltip: 'All Habits',
              label: '',
              icon: Icon(FontAwesomeIcons.list),
            ),
            BottomNavigationBarItem(
              tooltip: 'Settings',
              label: '',
              icon: Icon(FontAwesomeIcons.cog),
            ),
          ],
        ),
      ),
    );
  }
}
