import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../scens/cinema.dart';

String img = allcinemas[0].img;
final urlImages = [
  'assets/bar.jpg',
  'assets/cinema.jpg',
  'assets/fast.jpg',
];

final controller = CarouselController();

class CinemaOpen extends StatefulWidget {

  const CinemaOpen({Key? key}) : super(key: key);

  @override
  State<CinemaOpen> createState() => _CinemaOpenState();
}

class _CinemaOpenState extends State<CinemaOpen> {

  int activeIndex = 0;

  ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ground.webp'),
                fit: BoxFit.cover),
          ),
          child:
              Container(
    color: Colors.black12,
    child:
          Column(
            children: [
              SizedBox(
                width: 1,
                height: 20,
              ),
              Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(

                      onPressed: (){
                        Navigator.pushNamed(context, '/todo19');

                      },
                      icon: Icon(Icons.home),iconSize: 30, color: Colors.white,),

                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      height: MediaQuery.of(context).size.height*0.05,
                      color: Colors.transparent,
                      child: Center( child: Text(allcinemas[0].name, style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),),
                      ),),
                    SizedBox(
                      width: 35,
                      height: MediaQuery.of(context).size.height*0.05,
                    )
                  ],
                ),
              ),

              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.9-12,
                  child:ListView.builder(
                      controller: _scrollController,
                      itemCount: 1,
                      itemBuilder: (_, index) {
                        return  Column(
                          children: [
                            SizedBox(
                              width: 1,
                              height: 70,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.4,
                              color: Colors.transparent,
                              child: CarouselSlider.builder(
                                itemCount: 3,

                                itemBuilder: (context,index,ri)
                                {
                                  final urlImage = urlImages[index];

                                  return buildImage(urlImage, index);
                                },
                                carouselController: controller,
                                options: CarouselOptions(
                                    autoPlay: true,
                                    disableCenter: true,
                                    height:MediaQuery.of(context).size.width>800?
                                    MediaQuery.of(context).size.height*0.8:
                                    MediaQuery.of(context).size.height*0.4,
                                    //  scrollDirection: Axis.horizontal,
                                    viewportFraction: 1,
                                    initialPage: 3,
                                    enableInfiniteScroll: true,
                                    onPageChanged: (index, reason) {
                                      setState(() => activeIndex = index);
                                    }
                                ),
                              ),
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width,

                              height: MediaQuery.of(context).size.height*0.7,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration:BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white70,
                                          width: 4
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child:
                                    ElevatedButton(onPressed: (){

                                    },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.map),
                                          Container(child: Text(' На карту',
                                            style: TextStyle(
                                                fontSize: 19
                                            ),),),
                                        ],
                                      ),
                                      style: ButtonStyle(
                                        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),

                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width*0.4,
                                    height: MediaQuery.of(context).size.height*0.13,
                                    margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.5, 0, 0, 0),

                                  ),
                                  Container(
                                    decoration:BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white70,
                                          width: 4
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child:
                                    ElevatedButton(onPressed: (){

                                    },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.menu_book),
                                          Container(child: Text(' Меню',
                                            style: TextStyle(
                                                fontSize: 19
                                            ),),),
                                        ],
                                      ),
                                      style: ButtonStyle(
                                        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width*0.4,
                                    height: MediaQuery.of(context).size.height*0.13,
                                    margin: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width*0.5, 0),
                                  ),
                                  Container(
                                    decoration:BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white70,
                                          width: 4
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child:
                                    ElevatedButton(onPressed: (){

                                    },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.flag_outlined),
                                          Container(child: Text(' Ты пидор',
                                            style: TextStyle(
                                                fontSize: 19
                                            ),),),
                                        ],
                                      ),
                                      style: ButtonStyle(
                                        shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                      ),

                                    ),
                                    width: MediaQuery.of(context).size.width*0.4,
                                    height: MediaQuery.of(context).size.height*0.13,
                                    margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.5, 0, 0, 0),
                                  ),

                                ],
                              ),
                            ),

                        Container(

                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.5,
                              color: Colors.black45,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 20,width: 20,),
                                  Text('Адрес', style:
                                  TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on, color: Colors.white,),
                                      Text(allcinemas[0].adress, style:
                                      TextStyle(
                                          fontSize: 20,
                                          color: Colors.white

                                      ),
                                      )
                                    ],),
                                  Text('Часы роботы', style:
                                  TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.calendar_today_rounded, color: Colors.white,),
                                      Text(allcinemas[0].workt, style:
                                      TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                      )
                                    ],),
                                  Text('Контакты  ', style:
                                  TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.phone, color: Colors.white,),
                                      Text(allcinemas[0].telephone, style:
                                      TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                      )
                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.phone, color: Colors.white,),
                                      Text(allcinemas[0].telephone, style:
                                      TextStyle(
                                          fontSize: 20,
                                          color: Colors.white
                                      ),
                                      )
                                    ],),
                                  TextButton(
                                    onPressed:(){

                                    },
                                    child: Text('Сайт', style:
                                    TextStyle(
                                        fontSize: 20,
                                        color: Colors.white
                                    ),),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        );})
              )
            ],
          ),
              )
        )));
  }
  Widget buildImage(String urlImage, int index ) =>  Container(
      margin:EdgeInsets.all(20) ,
      decoration: BoxDecoration(
       // boxShadow: BoxShadow(),
        border: Border.all(
            color: Colors.white70,
            width: 3
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        image: DecorationImage(
            image: AssetImage(urlImage),
            fit: BoxFit.cover),
      ),
      width: MediaQuery.of(context).size.width*0.5,
      height: MediaQuery.of(context).size.width*0.5);
}