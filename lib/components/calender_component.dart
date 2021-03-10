import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderComponent extends StatefulWidget {
  @override
  _CalenderComponentState createState() => _CalenderComponentState();
}

class _CalenderComponentState extends State<CalenderComponent> {
  CalendarController _calendarController;

  List<DateTime> isSuccess = [
    DateTime(2021, 1, 1),
    DateTime(2021, 1, 6),
    DateTime(2021, 2, 14),
    DateTime(2021, 4, 21),
    DateTime(2021, 4, 22)
  ];

  final Map<DateTime, List> _holidays = {
    DateTime(2021, 1, 1): ['New Year\'s Day'],
    DateTime(2021, 1, 6): ['Epiphany'],
    DateTime(2021, 2, 14): ['Valentine\'s Day'],
    DateTime(2021, 4, 21): ['Easter Sunday'],
    DateTime(2021, 4, 22): ['Easter Monday'],
  };

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    _calendarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TableCalendar(
        availableGestures: AvailableGestures.none,
        // rowHeight: 100,
        startingDayOfWeek: StartingDayOfWeek.monday,

        holidays: _holidays,
        builders: CalendarBuilders(dayBuilder: (context, date, list) {
          return SizedBox(
            width: 100,
            height: 100,
            child: Card(
              color: Color(0xffffe227),
              child: Center(
                  child: Stack(
                children: [
                  Center(
                    child: Text('${date.day}',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16,
                        )),
                  ),
                  Center(child: Icon(FontAwesomeIcons.check))
                ],
              )),
            ),
          );
        }, holidayDayBuilder: (context, date, list) {
          return Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffe227), width: 2),
              ),
              width: 100,
              height: 100,
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Text('${date.day}',
                          style: GoogleFonts.roboto(
                              color: Colors.indigo[400], fontSize: 16)),
                    ),
                    // Center(
                    //   child: Icon(
                    //     FontAwesomeIcons.exclamationCircle,
                    //     color: Colors.red,
                    //   ),
                    // ),
                  ],
                ),
              ));
        }),

        calendarStyle: CalendarStyle(
          holidayStyle: TextStyle(color: Colors.pink),
          weekdayStyle: TextStyle(color: Colors.grey[50]),
          weekendStyle: TextStyle(color: Colors.grey[50]),
          outsideDaysVisible: false,
        ),

        daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(color: Colors.grey),
            weekendStyle: TextStyle(color: Colors.grey)),

        headerStyle: HeaderStyle(
            centerHeaderTitle: true,
            titleTextStyle: GoogleFonts.roboto(color: Colors.grey[100]),
            leftChevronIcon: Icon(
              FontAwesomeIcons.chevronCircleLeft,
              color: Colors.grey[50],
            ),
            rightChevronIcon: Icon(
              FontAwesomeIcons.chevronCircleRight,
              color: Colors.grey[50],
            )),
        weekendDays: [DateTime.sunday],
        availableCalendarFormats: {CalendarFormat.month: "Month"},
        calendarController: _calendarController,
      ),
    );
  }
}
