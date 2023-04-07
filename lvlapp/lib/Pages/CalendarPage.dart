import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lvlapp/Pages/Goals/GoalsPage.dart';
import 'package:lvlapp/classes/classes.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';
import 'package:intl/intl.dart';
import 'package:lvlapp/Pages/NavigatorPage.dart';


class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: Container(
              color: Color.fromRGBO(9, 0, 0, 0.8),
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                    child: Text(
                      'calendar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height -
                        80 -
                        MediaQuery.of(context).size.width * 0.25,
                    width: MediaQuery.of(context).size.width,
                    child: Custom(),
                  ),
                ],
              ),
            ));
  }
}

class Custom extends StatefulWidget {
  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return PagedVerticalCalendar(
      minDate: DateTime(2023),

      maxDate: DateTime(2024),
      /// customize the month header look by adding a week indicator
      monthBuilder: (context, month, year) {
        return Column(
          children: [
            /// create a customized header displaying the month and year
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text(
                DateFormat('MMMM yyyy').format(DateTime(year, month)),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white, fontSize: 20),
              ),
            ),

            /// add a row showing the weekdays
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  weekText('Mo'),
                  weekText('Tu'),
                  weekText('We'),
                  weekText('Th'),
                  weekText('Fr'),
                  weekText('Sa'),
                  weekText('Su'),
                ],
              ),
            ),
          ],
        );
      },

      /// added a line between every week
      dayBuilder: (context, date) {
        final chozenDay = date;
        final today = DateTime.now();
        return Column(
          children: [
            TextButton(
                onPressed: () {
                  String dateNumbers = date.toString().split(" ")[0];
                  setState(() {
                      widget = GoalsPage();
                    selectedIndex = 1;
                  });
                  print(today.day);
                  print(chozenDay.day);

                  today.day == chozenDay.day && chozenDay.month == today.month
                      ? NotesGoals.add(new Note(title: "today", content: ""))
                      : today.day == chozenDay.day - 1 &&
                              chozenDay.month == today.month
                          ? NotesGoals.add(
                              new Note(title: "tomorrow", content: ""))
                          : NotesGoals.add(
                              new Note(title: dateNumbers.split('-')[2]+" "+month[dateNumbers.split('-')[1]].toString(), content: ""));

                  Navigator.of(context).pushReplacementNamed('/navigator');
                },
                child: Text(
                  DateFormat('d').format(date),
                  style: TextStyle(
                      fontSize: 14,
                      color: chozenDay.day == today.day &&
                              chozenDay.month == today.month
                          ? Color.fromRGBO(0, 180, 216, 1.0)
                          : Colors.white),
                )),
          ],
        );
      },
    );
  }

  Widget weekText(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Text(
        text,
        style: TextStyle(color: Colors.grey, fontSize: 18),
      ),
    );
  }
}
