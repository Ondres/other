import 'package:flutter/material.dart';
import 'package:my4/openscens/cinema1.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'map2.dart';
import '../main.dart';

class citesScene extends StatelessWidget {
  const citesScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child:  WebView(
                initialUrl: url,
                javascriptMode: JavascriptMode.unrestricted,
              ),
      )
    );
  }
}
