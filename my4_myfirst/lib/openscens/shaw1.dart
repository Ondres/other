import 'package:my4/main.dart';
import 'package:flutter/material.dart';
import 'package:my4/classes/CardsClass.dart';
import 'package:my4/scens/shaw.dart';



ScrollController _scrollController = new ScrollController();

class ShawOpen extends StatelessWidget {
  const ShawOpen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[a],
      appBar: AppBar(
        backgroundColor: Colors.black,
          title:  Text('One'),
        centerTitle: true,
      ),
      body:  ListView.builder(
    controller: _scrollController,
    itemCount: 1,
    itemBuilder: (_, index)
    {
    return Column(
        children: [
          Thiscard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Image(
                  image: AssetImage('assets/shaw1.jpg'),
                  width: MediaQuery.of(context).size.width*0.9,
                ),
              ),
            ],
          ),

        ],
      );
    }
   ),
  );
 }
}

class Thiscard extends StatelessWidget {
  // const MenuList({Key? key}) : super(key: key);
  final allcards = <Allcards>[
    Allcards(name: ' проспект Гагарина, 8А',
        number: 1,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: 'Меню',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма2',
        number: 2,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма3',
        number: 3,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма4',
        number: 4,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма5',
        number: 5,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма6',
        number: 6,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма7',
        number: 7,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма8',
        number: 8,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма9',
        number: 9,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: '/todo8',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
    Allcards(name: 'Шаурма10',
        number: 10,
        iconname: '1',
        coordinatex: 1.0,
        coordinatey: 1.0,
        child: 'Классическая 90 Двойное мясо 110 Бурум 80 Мини 70 ',
        img: 'assets/shaw1.jpg',
        inst: '@abc',
        site: 'http://',
        telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  ];

  final allmenu = <Menu>[
    Menu(menu: [' классика', ' двойное мясо ', ' мини ',' классика', ' двойное мясо '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),
    Menu(menu: [' классика', ' двойное мясо ', ' мини '], cost: ['80₴ ', '90₴ ', '80₴ '], namegroup: ['aq' , 'qq']),



  ];


  @override
  Widget build(BuildContext context) {
    return Column(
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
        Container(
          height: 3,
        ),
       Text(allcards[n].name, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          fontFamily: 'CormorantGaramond',

        ),),
        Text(allcards[n].child, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'CormorantGaramond',
        ),),
       Container(
         height: 210,
         child: ListView.builder(itemCount: allmenu[n].menu.length, itemBuilder: (context, i)
         {
           return  Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(padding: EdgeInsets.only(left: 20), child: Text(allmenu[n].menu[i],style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
                 fontFamily: 'CormorantGaramond',
               ),
             ),
            ),

         Padding(padding: EdgeInsets.only(right: 20, left: 20), child:Text(allmenu[n].cost[i], style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'CormorantGaramond',
                        ),
                ),
             )
          ]);
      }),
     ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Image(
              image: AssetImage(allcards[n].img),

              height: MediaQuery.of(context).size.height*0.3,
            ),
          ),
        ],
      ),
    Padding(padding: EdgeInsets.only(top: 20)),
       Container(
         child: Text(allcards[n].telephone, style: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold,
         )),
       ),
       Padding(padding: EdgeInsets.only(top: 20)),

       Container(
         child: Text(allcards[n].site, style: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold,
         )),
       ),
       Padding(padding: EdgeInsets.only(top: 20)),

       Container(
         child: Text(allcards[n].worktime, style: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold,
         )),
       ),
     ],
    );
  }
}

