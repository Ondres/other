import 'package:circular_menu/circular_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:my4/main.dart';
import 'package:my4/scens/DrawerMenu.dart';
import 'dart:math';
import 'circleMenu.dart';


bool f1= false;

class UserPanel0 extends StatelessWidget {
  const UserPanel0({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Colors.orangeAccent,
   //   drawer: MainDrawer(),


      body:  Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/ground.webp"),
                fit: BoxFit.cover),
          ),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.all(1)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(padding: EdgeInsets.all(1)),
                    Column(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white12,

                            border: Border.all(
                                color: Colors.white,
                                width: 3
                            ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                          ),
                          child: ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Colors.black54,
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, '/todo19');
                            },
                            child: Icon(Icons.menu_book, color: Colors.white, size: 50,),
                          ),
                        ),
                        Text('Что рядом?',  style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'CormorantGaramond',
                        )),
                      ],
                    ),

                    Padding(padding: EdgeInsets.all(10)),

                    Column(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            border: Border.all(
                                color: Colors.white,
                                width: 3
                            ),

                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          child: ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Colors.black54,
                            ),
                            onPressed: (){
                              FirebaseFirestore.instance.collection('items').add({'item': a});

                              Navigator.pushNamed(context, '/todo21');
                            },
                            child: Icon(Icons.list_alt, color: Colors.white,size: 50,),
                          ),
                        ),
                        Text('Категории',  style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'CormorantGaramond',
                        )),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(1)),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            border: Border.all(
                                color: Colors.white,
                                width: 3
                            ),

                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Colors.black54,
                            ),
                            onPressed: (){
                           //   Navigator.pushNamed(context, '/todo24');
                            },
                            child: Text('Акции',
                                style:TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  fontFamily: 'CormorantGaramond',
                                ) ),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 240,
                          decoration: BoxDecoration(
                            color: Colors.white12,

                            border: Border.all(
                                color: Colors.white,
                                width: 3
                            ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ElevatedButton(
                            style:  ElevatedButton.styleFrom(
                              primary: Colors.black54,
                            ),
                            onPressed: (){
                                Navigator.pushNamed(context, '/test');
                            },
                            child: Text('Связаться с нами',
                                style:TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'CormorantGaramond',
                                ) ),
                          ),
                        ),
                      ],)
                  ],
                ),

                Container(
                  height: 100,
                ),
                //  CircularFabWidget(),
              ]
          ),
        ),

    );
  }
}