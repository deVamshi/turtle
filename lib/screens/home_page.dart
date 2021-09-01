import 'package:blobs/blobs.dart';
import 'package:dimple/components/habit_container.dart';
import 'package:dimple/helpers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle buildTextStyle({double fontSize}) {
    return GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: Colors.grey,
      fontSize: fontSize,
    );
  }

  List<HabitModel> habits = [
    HabitModel(
        name: "Drink enough water",
        icon: FontAwesomeIcons.water,
        selectedColor: Colors.blue),
    HabitModel(
        name: "Take Pills",
        icon: FontAwesomeIcons.grinWink,
        selectedColor: Colors.amber),
    HabitModel(
        name: "Code Daily",
        icon: FontAwesomeIcons.keyboard,
        selectedColor: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Center(
          child: Text(
            "Today",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.grey[900]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                Helpers.yesterdayDate(isDayBefore: true).day.toString(),
                style: buildTextStyle(fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                Helpers.yesterdayDate().day.toString(),
                style: buildTextStyle(fontSize: 18),
              ),
            ),
            Blob.fromID(
              id: ['6-6-7931'],
              size: 60,
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "${DateTime.now().day}",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                Helpers.tomorrowDate().day.toString(),
                style: buildTextStyle(fontSize: 18),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                Helpers.tomorrowDate(isDayAfter: true).day.toString(),
                style: buildTextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        Center(
          child: Text(
            Helpers.returnMonth(
              DateTime.now(),
            ),
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 15,
        //   ),
        //   child: StepProgressIndicator(
        //     totalSteps: 4,
        //     currentStep: 3,
        //     size: 15,
        //     padding: 0,
        //     selectedColor: Colors.yellow,
        //     unselectedColor: Colors.cyan,
        //     roundedEdges: Radius.circular(100),
        //     selectedGradientColor: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [Colors.indigo[900], Colors.purple],
        //     ),
        //     unselectedGradientColor: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [Colors.grey[100], Colors.grey[100]],
        //     ),
        //   ),
        // ),
        const SizedBox(height: 10),
        Expanded(
            child: Container(
          // color: Colors.blue,
          child: ListView.builder(
            itemCount: habits.length,
            itemBuilder: (_, index) {
              return habits.isEmpty
                  ? Center(
                      child: Icon(FontAwesomeIcons.check),
                    )
                  : HabitComponent(
                      habit: mockHabitsData[index],
                      toEdit: false,
                    );
            },
            // shrinkWrap: true,
            physics: BouncingScrollPhysics(),
          ),
        )),
      ],
    );
  }
}

class HabitModel {
  String name;
  IconData icon;
  Color selectedColor;

  HabitModel({this.name, this.icon, this.selectedColor});
}

List<HabitModel> mockHabitsData = [
  HabitModel(
      name: "Drink enough water",
      icon: FontAwesomeIcons.water,
      selectedColor: Colors.blue),
  HabitModel(
      name: "Take Pills",
      icon: FontAwesomeIcons.grinWink,
      selectedColor: Colors.amber),
  HabitModel(
      name: "Code Daily",
      icon: FontAwesomeIcons.keyboard,
      selectedColor: Colors.red),
];
