import 'package:flutter/material.dart';
import 'package:lvlapp/Pages/Notes/NotesPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'CalendarPage.dart';
import 'package:lvlapp/Pages/Goals/GoalsPage.dart';

Widget widget = NotesPage();
int selectedIndex = 0;

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/wallpaper2.png"), fit: BoxFit.cover),
        ),
        child: Window1());
  }
}

class Window1 extends StatefulWidget {
  const Window1({Key? key}) : super(key: key);

  @override
  State<Window1> createState() => _Window1State();
}

class _Window1State extends State<Window1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: widget,
        bottomNavigationBar: Container(
            color: Color.fromRGBO(9, 0, 0, 0.6),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 8),
                child: GNav(
                  onTabChange: (index) {
                    if (index == 0)
                      setState(() {
                        widget = NotesPage();
                      });
                    if (index == 1)
                      setState(() {
                        widget = GoalsPage();
                      });
                    if (index == 2)
                      setState(() {
                        widget = CalendarPage();
                      });
                    if (index == 0) widget = NotesPage();
                  },
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.black38,
                  color: Colors.white24,
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.military_tech,
                      text: 'Missions',
                    ),
                    GButton(
                      icon: Icons.calendar_month_outlined,
                      text: 'Calendar',
                    ),
                    GButton(
                      icon: Icons.access_alarm,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: selectedIndex,
                ),
              ),
            )));
  }
}

