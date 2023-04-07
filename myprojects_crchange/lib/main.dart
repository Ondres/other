import 'package:cryptochange/Otzivi.dart';
import 'package:cryptochange/contacts.dart';
import 'package:cryptochange/dartbot.dart';
import 'package:cryptochange/kursi.dart';
import 'package:cryptochange/reestration.dart';
import 'package:cryptochange/reservi.dart';
import 'package:cryptochange/userpage.dart';
import 'package:cryptochange/usloviya.dart';
import 'package:cryptochange/vhod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:g_recaptcha_v3/g_recaptcha_v3.dart';
import 'package:path_provider/path_provider.dart';

import 'cap.dart';
import 'firstpage.dart';
import 'dart:io';

import 'html/1.dart'
if (dart.library.html) 'html/2.dart';
import 'obmen.dart';

List<bool> Routes =[
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
String route = '/';

String siteKey = "6LccfqAhAAAAAHSv5xwTJG4qZt1U4Ci_gz8DEtlq";

void main()
async
{
  registerWebViewWebImpemenation();
  print('main');
  start().then((value) => null);
  await start1();
  print('main2');


}

Future start1() async {
  print('st1');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyBry78E3QOCEa2ZFlKPYrnOjLVA4cqGJFk",

      authDomain: "truexchange24.firebaseapp.com",

      projectId: "truexchange24",

      storageBucket: "truexchange24.appspot.com",

      messagingSenderId: "714060747230",

      appId: "1:714060747230:web:7724dbc825da3c0cedcd4f"

  ),);
}

Future<Map<String,String>> start() {
  print('st');
  runApp(MaterialApp(
    initialRoute: '/',
    title: 'Обменник Валют',
    routes: {
      '/': (context) => UserPanel0(),
      '/1': (context) => Courses(),
      '/2': (context) => Otzivi(),
      '/3': (context) => Reservi(),
      '/4': (context) => Vhod(),
      '/5': (context) => Reestr(),
      '/6': (context) => Contacts(),
      '/7': (context) => UserPanel1(),
      '/8': (context) => uslovia(),
      '/9': (context) => Obmen(),
      '/10': (context) =>MyHomePage(),
      '/11': (context) =>MyApp(),
    },
  ));
  return Future.delayed(Duration(seconds: 1), () => {'id':'d','sad':'e'});
}

