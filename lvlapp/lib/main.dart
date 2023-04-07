import 'package:flutter/material.dart';
import 'package:lvlapp/Pages/CalendarPage.dart';
import 'package:lvlapp/Pages/Goals/DayPage.dart';
import 'package:lvlapp/Pages/Goals/GoalsPage.dart';
import 'package:lvlapp/Pages/MainPage.dart';

import 'Pages/BattlePage.dart';
import 'Pages/NavigatorPage.dart';
import 'Pages/Notes/NotePage.dart';
import 'Pages/Notes/NotesPage.dart';
import 'package:get/get.dart';

void main()
{
  runApp(GetMaterialApp(
    initialRoute: '/navigator',
    routes: {
      '/todo1': (context) => BattlePage(),
      '/todo2': (context) => CalendarPage(),
      '/todo3': (context) => DayPage(),
      '/todo4': (context) => GoalsPage(),

      '/todo5': (context) => NotesPage(),
      '/todo6': (context) => NotePage(),

      '/navigator': (context)=> NavigatorPage(),

      '/': (context) => MainPage(),
    },
  ));
}

