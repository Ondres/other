
import 'package:flutter/material.dart';

class Courses {
  String kurs;

  Courses({required  this.kurs});
}
final allcrs = <Courses>[
Courses(
kurs: '114.00112'
),
  Courses(
      kurs: '3 978 924'
  ),
  Courses(
      kurs: '3 978 924'
  ),
  Courses(
      kurs: '3 978 924'
  ),
  Courses(
      kurs: '558 214'
  ),
  Courses(
      kurs: '1 113 232'
  ),
  Courses(
      kurs: '1 209 424'
  ),
  Courses(
      kurs: '910 212'
  ),
  Courses(
      kurs: '111 307'
  ),
  Courses(
      kurs: '203 001'
  ),
  Courses(
      kurs: '155 098'
  ),
  Courses(
      kurs: '28 902'
  ),
  Courses(
      kurs: '721 056'
  ),
  Courses(
      kurs: '504 930'
  ),
  Courses(
      kurs: '205 077'
  ),

  Courses(
      kurs: '1 215 210'
  ),
  Courses(
      kurs: '14 001'
  ),
  Courses(
      kurs: '2 489 028'
  ),
  Courses(
      kurs: '5 782 920'
  ),

];
class Coin {
  String name;
  String icon;
  int Num;

  Coin({required  this.name, required this.icon, required this.Num});
}




final allcoins = <Coin>[
  Coin(
    name: 'Bitcoin',
    icon: 'assets/bitcoin.png',
    Num: 0
   ),
  Coin(
      name: 'USDT ERC20',
      icon: 'assets/tether.png',
      Num: 1
  ),
  Coin(
      name: 'USDT TRC20',
      icon: 'assets/tether.png',
      Num: 2
  ),
  Coin(
      name: 'USDT POLYGON',
      icon: 'assets/tether.png',
      Num: 3
  ),
  Coin(
      name: 'Dai (DAI)',
      icon: 'assets/ps-dai.png',
      Num: 4
  ),
  Coin(
      name: 'Pax Dollar (USDP)',
      icon: 'assets/ps-pax.png',
      Num: 5
  ),
  Coin(
      name: 'BINANCE USD (BUSD)',
      icon: 'assets/bnb.png',
      Num: 6
  ),
  Coin(
      name: 'Solana',
      icon: 'assets/ps-solana.png',
      Num: 7
  ),
  Coin(
      name: 'Ethereum',
      icon: 'assets/ethereum.png',
      Num: 8
  ),
  Coin(
      name: 'Monero',
      icon: 'assets/monero.png',
      Num: 9
  ),
  Coin(
      name: 'Litecoin',
      icon: 'assets/litecoin.png',
      Num: 10
  ),
  Coin(
      name: 'Dash',
      icon: 'assets/ps-dash2.png',
      Num: 11
  ),
  Coin(
      name: 'Tron',
      icon: 'assets/tron.png',
      Num: 12
  ),
  Coin(
      name: 'Stellar',
      icon: 'assets/stellar.png',
      Num: 13
  ),
  Coin(
      name: 'Ripple',
      icon: 'assets/ripple.png',
      Num: 14
  ),
  Coin(
      name: 'ZCash',
      icon: 'assets/zcash.png',
      Num: 15
  ),
  Coin(
      name: 'Dogecoin',
      icon: 'assets/dogecoin.png',
      Num: 16
  ),
];


List<Widget> WL = [


        Container(
          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/dogecoin.png'),
                fit: BoxFit.contain),
          ),
        ),

  Container(
    child:
    Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/dogecoin.png'),
                fit: BoxFit.contain),
          ),
        ),
        Container(child:
        Text('Dogecoin', style: TextStyle(
            color: Colors.black
        ),),),
      ],
    ),
  ),
  Container(
    child:
    Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/dogecoin.png'),
                fit: BoxFit.contain),
          ),
        ),
        Container(child:
        Text('Dogecoin', style: TextStyle(
            color: Colors.black
        ),),),
      ],
    ),
  ),
];


final coinsList =
    [


      'Bitcoin',
     // name: 'USDT ERC20',
      'USDT TRC20',
     // name: 'USDT POLYGON',
    //  name: 'Dai (DAI)',
    //  name: 'Pax Dollar (USDP)',
      'BINANCE USD (BUSD)',
     // name: 'Solana',
      'Ethereum',
      'Monero',
      'Litecoin',
     'Dash',
      'Tron',
      'Stellar',
    //  name: 'Ripple',
      'ZCash',
     'Dogecoin',
    ];


class Bank {
  String name;
  String icon;

  Bank({required  this.name, required this.icon});
}
final allbanks = <Bank>[
Bank(
name: 'МИР',
icon: 'assets/bank/mir.png'
),
  Bank(
      name: 'Visa/MasterCard RUB',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'Visa/MasterCard USD',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'Visa/MasterCard EUR',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'Visa/MasterCard KZT',
      icon: 'assets/bank/ps-visamc.png'
  ),
  Bank(
      name: 'ВТБ',
      icon: 'assets/bank/vtb24.png'
  ),
  Bank(
      name: 'Тинькофф',
      icon: 'assets/bank/tcsbank.png'
  ),
  Bank(
      name: 'Альфа-банк',
      icon: 'assets/bank/alphabank.png'
  ),
  Bank(
      name: 'Русский стандарт',
      icon: 'assets/bank/ps-ruskiystandart.png'
  ),
  Bank(
      name: 'Райффайзенбанк',
      icon: 'assets/bank/raiffeisen.png'
  ),
  Bank(
      name: 'Промсвязьбанк',
      icon: 'assets/bank/promsvyazbank.png'
  ),
  Bank(
      name: 'Газпромбанк',
      icon: 'assets/bank/ps-gazprombank.png'
  ),
  Bank(
      name: 'Открытие банк',
      icon: 'assets/bank/openbank.png'
  ),
  Bank(
      name: 'Kaspi Bank',
      icon: 'assets/bank/ps-kaspi_bank.png'
  ),
  Bank(
      name: 'Любой банк RUB',
      icon: 'assets/bank/rur.png'
  ),
  Bank(
      name: 'Любой банк AZN',
      icon: 'assets/bank/azn.png'
  ),
  Bank(
      name: 'Любой банк KZT',
      icon: 'assets/bank/kzt.png'
  ),
  Bank(
      name: 'Любой банк AMD',
      icon: 'assets/bank/amd.png'
  ),
];

class PS {
  String name;
  String icon;

  PS({required  this.name, required this.icon});
}
final allps = <PS>[
PS(
name: 'QIWI RUB',
icon: 'assets/ps/qiwi.png'
),
  PS(
      name: 'Perfect Money USD',
      icon: 'assets/ps/perfect_money.png'
  ),
  PS(
      name: 'Perfect Money EUR',
      icon: 'assets/ps/perfect_money.png'
  ),
  PS(
      name: 'Payeer USD',
      icon: 'assets/ps/payeer.png'
  ),
  PS(
      name: 'Payeer EUR',
      icon: 'assets/ps/payeer.png'
  ),
  PS(
      name: 'Payeer RUB',
      icon: 'assets/ps/payeer.png'
  ),
  PS(
      name: 'Advanced Cash EUR',
      icon: 'assets/ps/advcash.png'
  ),
  PS(
      name: 'Advanced Cash USD',
      icon: 'assets/ps/advcash.png'
  ),
  PS(
      name: 'Advanced Cash RUR',
      icon: 'assets/ps/advcash.png'
  ),
  PS(
      name: 'Мобильная связь РФ',
      icon: 'assets/ps/ps-mobile_russia.png'
  ),
  PS(
      name: 'YooMoney',
      icon: 'assets/ps/yandex.png'
  ),
];
