import 'package:dimple/screens/detail_habit_page.dart';
import 'package:dimple/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class HabitComponent extends StatelessWidget {
  HabitComponent({this.habit, this.toEdit});

  HabitModel habit;
  bool toEdit = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
      child: ListTile(
        onTap: () {
          Get.to(
            DetailHabitPage(
              title: habit.name,
              icon: habit.icon,
            ),
          );
        },
        // trailing: TickerComponent(),
        leading: Container(
          height: 50,
          child: Icon(
            habit.icon,
            color: Colors.white,
          ),
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: habit.selectedColor),
        ),
        title: Text(
          habit.name,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        trailing: toEdit
            ? IconButton(
                icon: Icon(FontAwesomeIcons.pencilAlt),
                onPressed: () {
                  print("need to redirect to edit page");
                })
            : null,
      ),
    );
  }
}
