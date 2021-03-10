import 'package:dimple/components/calender_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailHabitPage extends StatelessWidget {
  String title;
  IconData icon;
  DetailHabitPage({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.indigo[900],
            child: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () => Get.back(),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 1.15,
              // color: Colors.red,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Icon(
                        icon,
                        size: 120,
                        color: Colors.indigo[100],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Text(
                      title,
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            // height: 35sd0,
                            width: double.maxFinite,
                            child: Card(
                              color: Colors.indigo[800],
                              elevation: 5,
                              child: CalenderComponent(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // BarChartSample1(),
                        // SizedBox(
                        //   height: 10,
                        // ),

                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: SizedBox(
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                  height: 40,
                                  color: Colors.indigo[900],
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Text(
                                        "Longest Streak",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[100]),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          "16",
                                          style: GoogleFonts.roboto(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 50,
                                              color: Colors.indigo[200]),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Icon(
                                          FontAwesomeIcons.trophy,
                                          color: Colors.indigo[200],
                                          size: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: SizedBox(
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                  height: 40,
                                  color: Colors.indigo[900],
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Text(
                                        "Current Streak",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[100]),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "4",
                                            style: GoogleFonts.roboto(
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 50,
                                                color: Colors.indigo[200]),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Icon(
                                            Icons.local_fire_department,
                                            color: Colors.indigo[200],
                                            size: 50,
                                          ),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
