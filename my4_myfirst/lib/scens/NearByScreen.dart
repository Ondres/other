import 'package:my4/main.dart';
import 'package:flutter/material.dart';
import 'package:my4/classes/CardsClass.dart';

class NearByScreen extends StatefulWidget {
  const NearByScreen({Key? key}) : super(key: key);

  @override
  State<NearByScreen> createState() => _NearByScreenState();
}

class _NearByScreenState extends State<NearByScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[a],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(' Кафе', style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'CormorantGaramond'
        ),
        ),
        centerTitle: true,
        //  leading: Icon(Icons.menu),
      ),
      body: AllcardsList(),

    );
  }
}

class AllcardsList extends StatelessWidget {
  // const MenuList({Key? key}) : super(key: key);

  final allcards = <Allcards>[
    Allcards(name: 'Кафе1', number: 1,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе2', number: 2,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе3', number: 3,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе4', number: 4,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе5', number: 5,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе6', number: 6,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе7', number: 7,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе8', number: 8,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе9', number: 9,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Кафе10', number: 10,iconname: '1',coordinatex: 1.0,coordinatey: 1.0,child: '/todo1',img: 'assets/cafe.webp',inst: '@abc',site: 'http://', telephone: '+380123123', worktime: '11:00-23:00'),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: allcards.length,
        itemBuilder: (context, i){

          return  Column(
            children: [
              Container(
                height: 3,
              ),
              ElevatedButton(
                  style:  ElevatedButton.styleFrom(
                    primary: Colors.black54,
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, allcards[i].child);
                  },
                  child:
                  Container(
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage(allcards[i].img),
                                // image: NetworkImage('https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2021/07/Cafes-in-Greater-Noida.jpg?fit=1000%2C667&ssl=1'),
                                height: 50,
                                width: 65,
                              ),
                            ),
                            Text(allcards[i].name, style: TextStyle(
                              fontFamily: 'CormorantGaramond',
                              fontSize: 30,
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                        Icon(Icons.local_cafe, color: Colors.white,),
                      ],
                    ),
                  )
              ),


            ],
          );

        },
      ),
    );
  }
}

