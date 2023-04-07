import 'package:cryptochange/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

import 'dartbot.dart';
final telegram = Telegram('5613252740:AAGdnSygaZ3AI1QiIg-jC_yGicn8r9qhrNI');
Telegram tg = '5613252740:AAGdnSygaZ3AI1QiIg-jC_yGicn8r9qhrNI' as Telegram;
late TeleDart teleDart;
String botName = '';
var msgId =  580706417;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage22(title: 'Flutter Telegram Bot'),
    );
  }
}

class MyHomePage22 extends StatefulWidget {
 // MyHomePage22({required Key key, required this.title}) : super(key: key);
  const MyHomePage22({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePage22State createState() => _MyHomePage22State();
}

class _MyHomePage22State extends State<MyHomePage22> {
  //TODO Secret API Key


  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  List<Map<String, String>> _msgs = [];


  @override
  void initState() {
    super.initState();
    _startBot();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(widget.title),
        actions: [
           IconButton(icon: Icon(Icons.play_arrow), onPressed: () => _startBot())
         ],
      ),
      body: Container(
      color: Colors.orangeAccent,
      ),
    );
  }

  _getAligment(index) {
    if (_msgs[index].keys.toList()[0] == botName) {
      return MainAxisAlignment.end;
    }
    return MainAxisAlignment.start;
  }




 

  @override
  void dispose() {
    teleDart.stop();
    super.dispose();
  }}
_startBot() async{
  final username = (await telegram.getMe()).username;
  teleDart = TeleDart('5613252740:AAGdnSygaZ3AI1QiIg-jC_yGicn8r9qhrNI', Event(username!));
  teleDart.start();
  teleDart.sendMessage(msgId, ' валюта : '+c1+'\n сумма : '+svalue+'\n email: '+email);
  teleDart.stop();
}
