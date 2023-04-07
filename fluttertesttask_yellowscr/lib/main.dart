import 'package:flutter/material.dart';
import 'domains/api_client/api_client.dart';
import 'screens/homeScreen.dart';

void main()
async {

  await ApiClient().getPost('https://jsonplaceholder.typicode.com/photos?albumId=1');


  start().then((value) => null);

 // print('2');
}

Future<Map<String,String>> start() {

  runApp(MaterialApp(
    initialRoute: '/',
    title: 'Destination',
    routes: {
      '/': (context) => homeScreen(),
    },
  ));
  return Future.delayed(Duration(seconds: 1), () => {});
}