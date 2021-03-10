import 'package:blobs/blobs.dart';
import 'package:dimple/components/habit_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle buildTextStyle(double size) {
    return GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: Colors.grey,
      fontSize: size,
    );
  }

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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
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
                "17",
                style: buildTextStyle(16),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "18",
                style: buildTextStyle(18),
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
                "18",
                style: buildTextStyle(18),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "17",
                style: buildTextStyle(16),
              ),
            ),
          ],
        ),
        Center(
          child: Text(
            'Febraury',
            style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: StepProgressIndicator(
            totalSteps: 4,
            currentStep: 3,
            size: 15,
            padding: 0,
            selectedColor: Colors.yellow,
            unselectedColor: Colors.cyan,
            roundedEdges: Radius.circular(100),
            selectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo[900], Colors.purple],
            ),
            unselectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.grey[100], Colors.grey[100]],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
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
                  : Dismissible(
                      key: UniqueKey(),
                      secondaryBackground: Container(
                        color: Colors.red,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              FontAwesomeIcons.frown,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      background: Container(
                        color: Colors.green,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                FontAwesomeIcons.smileBeam,
                                color: Colors.white,
                              ),
                            )),
                      ),
                      onDismissed: (direction) {},
                      child: HabitComponent(
                        text: habits[index]['text'],
                        selectedColor: habits[index]['selectedColor'],
                        icon: habits[index]['icon'],
                        toEdit: false,
                      ),
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
