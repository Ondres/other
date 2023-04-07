import 'package:circular_menu/circular_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'dart:math';
import 'dart:async';
import 'package:my4/main.dart';
import 'package:my4/scens/cinema.dart';
import 'package:carousel_slider/carousel_slider.dart';

ScrollController _scrollController = new ScrollController();
final urlImages = [
  ' ',
  ' ',
  ' ',
  ' ',
  ' ',
  ' ',
  ' ',
  ' ',
];
var f=1;
List r = [
  153,
  255,
  255,
  255,
  255
];
List g = [
  0,
  255,
  255,
  255,
  255
];
List b = [
  0,
  255,
  255,
  255,
  255
];

class CircleMenu1 extends StatefulWidget {
  const CircleMenu1({Key? key}) : super(key: key);

  @override
  State<CircleMenu1> createState() => _CircleMenu1State();
}

class _CircleMenu1State extends State<CircleMenu1> {
  int activeIndex = 0;

  final controller = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[a],

        body: Container(
          width: MediaQuery.of(context).size.width,

          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/ground.webp"),
                fit: BoxFit.cover),),

          child: Column(
            children: [
              Container(
                width: 40,
                height: MediaQuery.of(context).size.height*0.05,
              ),
              Container(
                //  color: Colors.white70,
                width: MediaQuery.of(context).size.width,
                height: 40,
                padding: EdgeInsets.fromLTRB(5,0,5,0),
                margin: EdgeInsets.fromLTRB(0,0,0,10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      backw = '/todo2';
                      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                      for(int i=0;i<5;i++)
                      {
                        r[i] = 255;
                        g[i] = 255;
                        b[i] = 255;
                      }
                        r[0] = 153;
                        g[0] = 0;
                        b[0] = 0;

                    }, icon: Icon(Icons.home, color: Colors.white, size: 30,)),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          border: Border.all(
                              color: Colors.black,
                              width: 3
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      //  color: Colors.black54,
                      width: MediaQuery.of(context).size.width*0.6,
                      height: 30,
                      child: TextField(
                        controller: searchController,
                        style: TextStyle(
                            color: Colors.white
                        ),
                        decoration: InputDecoration(
                          //     hintText: 'Введите название',
                          hintStyle: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(Icons.search, color: Colors.white,size: 20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 10,
                    )
                  ],
                ),
              ),

      CarouselSlider.builder(
        itemCount: 5,

        itemBuilder: (context,index,ri)
        {
          final urlImage = urlImages[index];

          return buildImage(urlImage, index);
        },
        carouselController: controller,
        options: CarouselOptions(
          disableCenter: true,
          height: MediaQuery.of(context).size.height*0.8,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: false,
          onPageChanged: (index, reason) {
            setState(()=>activeIndex = index);
            for(int i=0;i<5;i++)
            {
              r[i] = 255;
              g[i] = 255;
              b[i] = 255;
            }
            if(index == 0)
              {
                r[0] = 153;
                g[0] = 0;
                b[0] = 0;
              }
            if(index == 1)
            {
              r[1] = 255;
              g[1] = 153;
              b[1] = 204;
            }
            if(index == 2)
            {
              r[2] = 210;
              g[2] = 242;
              b[2] = 81;
            }
            if(index == 3)
            {
              r[3] = 110;
              g[3] = 222;
              b[3] = 81;
            }
            if(index == 4)
            {
              r[4] = 0;
              g[4] = 0;
              b[4] = 204;
            }
          }


        ),
      ),

            ],
          ),
        ),

      floatingActionButton: Container(
      //  alignment: Alignment.bottomLeft,
        height: 60,
        //  color: Colors.black,
        decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(
                color: Colors.black,
                width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(1))
        ),
        //padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
        width: MediaQuery.of(context).size.width,
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Container(
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(
                      color: Colors.black,
                      width: 1
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(1))
              ),
              width: 58,
              height: 58,
              // padding: EdgeInsets.all(2),
              child:
              ElevatedButton(
                onPressed: (){
                  controller.animateToPage(0, duration: Duration(milliseconds: 350));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.coffee, color: Color.fromRGBO(r[0], g[0], b[0], 100),),
                  ],
                ),
                style:  ElevatedButton.styleFrom(

                    primary: Colors.transparent,
                    shadowColor: Colors.transparent
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(
                      color: Colors.black,
                      width: 1
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(1))
              ),
              width: 58,
              height: 58,
              // padding: EdgeInsets.all(2),
              child:
              ElevatedButton(
                onPressed: (){
                  controller.animateToPage(1, duration: Duration(milliseconds: 350));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.coffee, color: Color.fromRGBO(r[1], g[1], b[1], 100),),
                  ],
                ),
                style:  ElevatedButton.styleFrom(

                    primary: Colors.transparent,
                    shadowColor: Colors.transparent
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(
                      color: Colors.black,
                      width: 1
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(1))
              ),
              width: 58,
              height: 58,
              // padding: EdgeInsets.all(2),
              child:
              ElevatedButton(
                onPressed: (){
                  controller.animateToPage(2, duration: Duration(milliseconds: 350));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.coffee, color: Color.fromRGBO(r[2], g[2], b[2], 100),),
                  ],
                ),
                style:  ElevatedButton.styleFrom(

                    primary: Colors.transparent,
                    shadowColor: Colors.transparent
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(
                      color: Colors.black,
                      width: 1
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(1))
              ),
              width: 58,
              height: 58,
              // padding: EdgeInsets.all(2),
              child:
              ElevatedButton(
                onPressed: (){
                  controller.animateToPage(3, duration: Duration(milliseconds: 350));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.coffee, color: Color.fromRGBO(r[3], g[3], b[3], 100),),
                  ],
                ),
                style:  ElevatedButton.styleFrom(

                    primary: Colors.transparent,
                    shadowColor: Colors.transparent
                ),
              ),
            ),

      Container(
        decoration: BoxDecoration(
            color: Colors.black87,
            border: Border.all(
                color: Colors.black,
                width: 1
            ),
            borderRadius: BorderRadius.all(Radius.circular(1))
        ),
        width: 58,
        height: 58,
        // padding: EdgeInsets.all(2),
        child:
        ElevatedButton(
          onPressed: (){
            controller.animateToPage(4, duration: Duration(milliseconds: 350));

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.coffee, color: Color.fromRGBO(r[4], g[4], b[4], 100),),
            ],
          ),
          style:  ElevatedButton.styleFrom(

              primary: Colors.transparent,
              shadowColor: Colors.transparent
          ),
        ),
      ),

      ]
    )
      )
    );
  }

  Widget buildImage(String urlImage, int index ) =>  CinemaScreen();
}