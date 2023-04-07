import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'dart:math';
import 'dart:async';
import 'package:my4/main.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
var f=1;
String _colorName = 'No';
Color _color = Colors.black;
final ScrollController _controllerOne = ScrollController();
class CircleMenu extends StatelessWidget {
  const CircleMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[a],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('1111'),
        centerTitle: true,
      ),
      bottomSheet: Container(
        alignment: Alignment.bottomCenter,
          height: 40,
          color: Colors.black54,
          width: MediaQuery.of(context).size.width*0.6,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Scrollbar(
              controller: _controllerOne,
              isAlwaysShown: true,
              child: GridView.builder(
                padding: EdgeInsets.only(bottom: 150),
                controller: _controllerOne,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                itemBuilder: (BuildContext context, int index) {
                  return Text('1');
                },
              ),
            ),
          ])
      )
    );
  }
}




