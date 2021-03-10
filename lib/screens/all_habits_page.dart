import 'package:dimple/components/habit_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllHabitsPage extends StatelessWidget {
  List<Map<String, dynamic>> habits = [
    {
      'text': "Drink enough water",
      "icon": FontAwesomeIcons.water,
      "selectedColor": Colors.blue
    },
    {
      'text': "Take pills",
      "icon": FontAwesomeIcons.grinWink,
      "selectedColor": Colors.amber
    },
    {
      'text': "Code Daily",
      "icon": FontAwesomeIcons.keyboard,
      "selectedColor": Colors.red
    },
    {
      'text': "No Social Media",
      "icon": FontAwesomeIcons.facebook,
      "selectedColor": Colors.pink
    },
    {
      'text': "Drink enough water",
      "icon": FontAwesomeIcons.water,
      "selectedColor": Colors.blue
    },
    {
      'text': "Take pills",
      "icon": FontAwesomeIcons.grinWink,
      "selectedColor": Colors.amber
    },
    {
      'text': "Code Daily",
      "icon": FontAwesomeIcons.keyboard,
      "selectedColor": Colors.red
    },
    {
      'text': "No Social Media",
      "icon": FontAwesomeIcons.facebook,
      "selectedColor": Colors.pink
    },
    {
      'text': "Drink enough water",
      "icon": FontAwesomeIcons.water,
      "selectedColor": Colors.blue
    },
    {
      'text': "Take pills",
      "icon": FontAwesomeIcons.grinWink,
      "selectedColor": Colors.amber
    },
    {
      'text': "Code Daily",
      "icon": FontAwesomeIcons.keyboard,
      "selectedColor": Colors.red
    },
    {
      'text': "No Social Media",
      "icon": FontAwesomeIcons.facebook,
      "selectedColor": Colors.pink
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.back(),
          backgroundColor: Colors.indigo[900],
          child: Icon(FontAwesomeIcons.arrowLeft),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only( top: 20,bottom: 10),
              child: Text(
                "All Habits",
                style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
            // Divider(),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) => HabitComponent(
                    toEdit: true,
                    text: habits[index]['text'],
                    selectedColor: habits[index]['selectedColor'],
                    icon: habits[index]['icon'],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
