// import 'package:blobs/blobs.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:table_calendar/table_calendar.dart';

// class ShortCalendarComponent extends StatelessWidget {
//   CalendarController _calendarController = CalendarController();
//   TextStyle buildTextStyle(double size) {
//     return GoogleFonts.roboto(
//       fontWeight: FontWeight.bold,
//       color: Colors.grey,
//       fontSize: size,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TableCalendar(
//       headerVisible: false,
//       availableGestures: AvailableGestures.none,
//       startingDayOfWeek: StartingDayOfWeek.monday,
    

//       builders: CalendarBuilders(
//         todayDayBuilder: (context, date, list) {
//           return Blob.fromID(
//             id: ['6-6-7931'],
//             size: 60,
//             child: Center(
//               child: Text(
//                 date.toString(),
//                 style: GoogleFonts.roboto(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   fontSize: 25,
//                 ),
//               ),
//             ),
//           );
//         },
//         // dayBuilder: (context, date, list) {
//         //   return Text(
//         //     date.toString(),
//         //     style: buildTextStyle(18),
//         //   );
//         // },
//       ),

//       calendarStyle: CalendarStyle(
//         holidayStyle: TextStyle(color: Colors.pink),
//         weekdayStyle: TextStyle(color: Colors.grey[50]),
//         weekendStyle: TextStyle(color: Colors.grey[50]),
//         outsideDaysVisible: false,
//       ),

//       daysOfWeekStyle: DaysOfWeekStyle(
//           weekdayStyle: TextStyle(color: Colors.grey),
//           weekendStyle: TextStyle(color: Colors.grey)),

//       headerStyle: HeaderStyle(
        
//         centerHeaderTitle: true,
//         titleTextStyle: GoogleFonts.roboto(color: Colors.grey[100]),
//         leftChevronIcon: Icon(
//           FontAwesomeIcons.chevronCircleLeft,
//           color: Colors.grey[50],
//         ),
//         rightChevronIcon: Icon(
//           FontAwesomeIcons.chevronCircleRight,
//           color: Colors.grey[50],
//         ),
//       ),
//       initialCalendarFormat: CalendarFormat.week,
//       weekendDays: [DateTime.sunday],
//       availableCalendarFormats: {CalendarFormat.week: "Week"},
//       calendarController: _calendarController,
//     );
//   }
// }
