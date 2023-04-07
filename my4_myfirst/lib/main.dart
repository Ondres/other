//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my4/scens/DrawerMenu.dart';
import 'package:my4/scens/NearByScreen.dart';
//import 'package:dio/dio.dart';
//import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my4/scens/cafee.dart';
import 'package:my4/scens/cinema.dart';
import 'package:my4/scens/circleMenu.dart';
import 'package:my4/scens/citescene.dart';
import 'package:my4/scens/drawemenu2.dart';
import 'package:my4/scens/fast.dart';
import 'package:my4/scens/firstscreen.dart';
import 'package:my4/scens/rest.dart';
import 'package:my4/scens/pizza.dart';
import 'package:my4/scens/settingsScreen.dart';
import 'package:my4/scens/sushi.dart';
import 'package:my4/scens/club.dart';
import 'package:my4/scens/baker.dart';
import 'package:my4/scens/bar.dart';
import 'package:my4/scens/shaw.dart';
import 'package:my4/scens/hookah.dart';
import 'package:my4/scens/firstmenu.dart';
import 'package:my4/scens/MainMenu.dart';
import 'package:my4/openscens/cinema1.dart';
import 'package:my4/openscens/shaw1.dart';
import 'package:my4/openscens/cinema1.dart';
import 'package:my4/scens/test.dart';
import 'package:my4/scens/test2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_map/flutter_map.dart';

//100, 200, 400, 700,
String googleAPIKey = 'AIzaSyCLWwhWg_OH56lNZY82Vq0VqOih-UusUy4';
String backw = '';
String url = '';
var a = 200;
dynamic a1()
{
  if(a==200)
    return 400;

  if(a==400)
    return 700;

  return 200;
}



void main() async
{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/todo1': (context) => CafeeScreen(),
      '/todo2': (context) => CinemaScreen(),
      '/todo3': (context) => ShawScreen(),
      '/todo4': (context) => BakerScreen(),
      '/todo5': (context) => HookahScreen(),
      '/todo6': (context) => PizzaScreen(),
      '/todo7': (context) => RestScreen(),
      '/todo8': (context) => ShawOpen(),
      '/todo9': (context) => ClubScreen(),
      '/todo10': (context) => BarScreen(),
      '/todo11': (context) => SushiScreen(),
      '/todo12': (context) => FastScreen(),
      '/todo13': (context) => UserPanel1(),
      '/todo14': (context) => NearByScreen(),
      '/todo15': (context) => UserSettings(),
      '/todo16': (context) => MainMenu(),

      '/todo17': (context) => CinemaOpen(),
      '/test': (context) => MapSample(),
      '/todo18': (context) => citesScene(),

      '/todo19': (context) => CircleMenu1(),

      '/todo20': (context) => CircleMenu(),

      '/todo21': (context) => MainDrawer(),

      '/todo23': (context) => MainDrawer2(),



      '/': (context) => UserPanel0(),
    },
  ));
}





