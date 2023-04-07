import 'package:flutter/material.dart';

class MyImg {
  int albumId;
  int id;
  String title;
  String url;
  String tUrl;

  MyImg(
      {required this.url,
      required this.albumId,
      required this.id,
      required this.title,
      required this.tUrl});
}
