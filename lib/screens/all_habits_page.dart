import 'package:dimple/components/habit_container.dart';
import 'package:dimple/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllHabitsPage extends StatelessWidget {
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
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "All Habits",
                style: GoogleFonts.roboto(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            // Divider(),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: mockHabitsData.length,
                  itemBuilder: (context, index) => HabitComponent(
                    toEdit: true,
                    habit: mockHabitsData[index],
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
