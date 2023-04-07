import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'html/1.dart'
    if (dart.library.html) 'html/2.dart';
import 'obmen.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:
        WebView(
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller){
            controller.loadUrl("C:/Users/Andrei/esktop/desktopdart/dart/myprojects/lib/htmlindex1.html");
          },
          initialUrl: "lib/html/index1.html",
          javascriptChannels: Set.from([
            JavascriptChannel(name: 'Captcha', onMessageReceived: (JavascriptMessage message){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Obmen()));
            })
          ]),
        ),)
   );
  }
}