import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateHabitPage extends StatefulWidget {
  @override
  _CreateHabitPageState createState() => _CreateHabitPageState();
}

class _CreateHabitPageState extends State<CreateHabitPage> {
  TextEditingController _habitNameController = TextEditingController();
  IconData _selectedIcon = FontAwesomeIcons.check;
  Color _selectedColor = Colors.pink;

  List<Color> _availableColors = [
    Colors.pink,
    Colors.red,
    Colors.blue,
    Colors.indigo,
    Colors.amber,
    Colors.green,
    Colors.orange,
    Colors.cyan,
  ];
  List<IconData> _availableIcons = [
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
    FontAwesomeIcons.check,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.back(),
          backgroundColor: Colors.indigo[900],
          child: Icon(FontAwesomeIcons.arrowLeft),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Create Habit",
                  style: GoogleFonts.roboto(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _habitNameController,
                  decoration: InputDecoration(
                    hintText: 'Habit name eg: Exercise daily',
                    filled: true,
                    disabledBorder: InputBorder.none,
                    fillColor: Colors.indigo[50],
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value.length == 0) {
                      return "Habit name should not be empty";
                    }
                    return null;
                  }),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RawMaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            contentPadding: const EdgeInsets.all(10.0),
                            title: new Text(
                              'SAVED !!!',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            content: new Container(
                              // Specify some width
                              width: MediaQuery.of(context).size.width * .2,
                              child: new GridView.count(
                                  crossAxisCount: 4,
                                  childAspectRatio: 1.0,
                                  padding: const EdgeInsets.all(4.0),
                                  mainAxisSpacing: 4.0,
                                  crossAxisSpacing: 4.0,
                                  children:
                                      _availableIcons.map((IconData icon) {
                                    return new GridTile(
                                        child: IconButton(
                                            icon: Icon(icon),
                                            onPressed: () {}));
                                  }).toList()),
                            ),
                            actions: <Widget>[
                              new IconButton(
                                  splashColor: Colors.green,
                                  icon: new Icon(
                                    Icons.done,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })
                            ],
                          );
                        });
                  },
                  elevation: 2.0,
                  fillColor: _selectedColor,
                  child: Icon(
                    _selectedIcon,
                    size: 35.0,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (Color color in _availableColors)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedColor = color;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: color,
                        radius: 15,
                      ),
                    )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.indigo[900]),
                  onPressed: () {},
                  child: Text("Create Habit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
