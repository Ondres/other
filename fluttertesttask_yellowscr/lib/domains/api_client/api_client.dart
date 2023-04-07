import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:fluttertesttask/classes/myImg.dart';
import 'package:http/http.dart';
import 'package:vector_math/vector_math.dart';

final alltasks = <MyImg>[
];

class ApiClient {
  final client = HttpClient();

  var http;

  Future<int> getPost(String text) async {
    final response = await get(Uri.parse(text));
   // print(response.statusCode);
   // print('10101010');
   // print(jsonDecode(response.body));
   // print(jsonDecode(response.body)[0]['url']);
    if (response.statusCode == 200) {
      int i = 0;
      List<dynamic> ns = jsonDecode(response.body);
      print(ns.length);
      for (i; i < ns.length; i++) {

        if(jsonDecode(response.body)[i]['title']!=null)
        alltasks.add(MyImg(
          title: jsonDecode(response.body)[i]['title'],
          url: jsonDecode(response.body)[i]['url'],
          id: jsonDecode(response.body)[i]['id'],
          tUrl: jsonDecode(response.body)[i]['thumbnailUrl'],
          albumId: jsonDecode(response.body)[i]['albumId'],
          ));
      }

      return (alltasks[49].id);
    } else {
      return (response.statusCode);
    }
  }
}

