//import 'dart:ffi';
import 'package:my4/main.dart';
import 'package:flutter/material.dart';


class Mycards {
  String name;
  String img;
  double number;
  String iconname;
  String child;
  Mycards({required  this.name, required  this.iconname,required   this.img, required  this.number, required  this.child});
}

class AllCinemas{
  String adress;
  List<String> menu,cost,worktime;
  String workt;
  String name;
  String img;
  double coordinatex;
  double coordinatey;
  double number;
  String iconname;
  String child;
  String inst;
  String telephone;
  String site;
  AllCinemas({required this.workt, required this.menu,required this.cost,required this.adress,required  this.worktime, required  this.child, required  this.inst, required  this.telephone, required  this.site,  required  this.name, required this.coordinatex,required  this.coordinatey,required  this.iconname,required   this.img,required  this.number});
}

class Allcards {
  String name;
  String img;
  double coordinatex;
  double coordinatey;
  double number;
  String iconname;
  String child;
  String inst;
  String telephone;
  String site;
  String worktime;
  Allcards({ required  this.worktime, required  this.child, required  this.inst, required  this.telephone, required  this.site,  required  this.name, required this.coordinatex,required  this.coordinatey,required  this.iconname,required   this.img,required  this.number});
}

class Menu{
  List<String> menu,cost;
  //String a;
  List<String> namegroup;
  Menu({required this.menu,required this.cost,required this.namegroup});
}



final allcards = <Allcards>[
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
  Allcards(name: ' проспект Гагарина, 8А',
      number: 1,
      iconname: '1',
      coordinatex: 1.0,
      coordinatey: 1.0,
      child: '/todo17',
      img: 'assets/cinema.jpg',
      inst: '@abc',
      site: 'http://',
      telephone: 'Номер телефона +380123123', worktime: '11:00-23:00'),
];

final allmenu = <Menu>[
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
  Menu(menu: [' утренние сеансы 2D ', ' вечерние сеансы 2D ', ' утренние 3D ',' вечерние 3D ', ' IMAX '], cost: ['80₴ ', '90₴ ', '80₴ ','80₴ ', '90₴ '], namegroup: ['aq' , 'qq']),
];

final mycards = <Mycards>[
  Mycards(name: 'Кафе', img: 'assets/cafe.webp', number: 1, iconname: 'fitst', child: '/todo1'),
  Mycards(name: 'Рестораны', img: 'assets/rest.jpg', number: 2, iconname: 'fitst', child: '/todo7'),
  Mycards(name: 'Пекарни', img: 'assets/fast.jpg',  number: 3, iconname: 'fitst', child: '/todo4'),
  Mycards(name: 'Бары', img: 'assets/bar.jpg',  number: 4, iconname: 'fitst', child: '/todo10'),
  Mycards(name: 'Клубы', img: 'assets/club.jpg',  number: 5, iconname: 'fitst', child: '/todo9'),
  Mycards(name: 'Шаурма', img: 'assets/shaw.jpg', number: 6, iconname: 'fitst', child: '/todo3'),
  Mycards(name: 'Суши', img: 'assets/sushi.jpg',  number: 7, iconname: 'fitst', child: '/todo11'),
  Mycards(name: 'Фаст фуды', img: 'assets/fast.jpg',  number: 8, iconname: 'fitst', child: '/todo12'),
  Mycards(name: 'Кино', img: 'assets/cinema.jpg',  number: 9, iconname: 'fitst', child: '/todo2'),
  Mycards(name: 'Кальянные', img: 'assets/hookah.jpg',  number: 10, iconname: 'fitst', child: '/todo5'),
  Mycards(name: 'Антикафе', img: 'assets/hookah.jpg',  number: 10, iconname: 'fitst', child: '/todo5'),
  Mycards(name: 'ТРЦ', img: 'assets/ground.webp',  number: 10, iconname: 'fitst', child: '/todo5'),

];