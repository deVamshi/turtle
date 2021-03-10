import 'package:dimple/components/bar_chart_component.dart';
import 'package:dimple/screens/my_line_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyProPage extends StatelessWidget {
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
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     colors: [Colors.indigo[500], Colors.indigo[900]]),
              ),
          child: ListView(
            // shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 50,
              ),
              
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: MyLineChart(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: BarChartSample1(),
              ),
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          "Detailed Analytics",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle:
                            Text("Get deep insights with beautiful charts"),
                        leading: Icon(
                          FontAwesomeIcons.chartPie,
                          color: Colors.pink,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Dark Mode",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text("For a darker experience"),
                        leading: Icon(
                          FontAwesomeIcons.adjust,
                          color: Colors.grey[900],
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Support a solo dev",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text(
                          "Your help means the world to me :)",
                          style: GoogleFonts.roboto(),
                        ),
                        leading: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 50,
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo, // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {},
                            child: Text("Lifetime access for just \$1"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
