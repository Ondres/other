import 'package:flutter/material.dart';

import 'package:lvlapp/classes/classes.dart';
import 'package:lvlapp/Pages/NavigatorPage.dart';
import 'NotesPage.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  TextEditingController title_controller =
      new TextEditingController(text: notes1[index].title);
  TextEditingController content_controller =
      new TextEditingController(text: notes1[index].content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/wallpaper2.png"), fit: BoxFit.cover),
        ),
        child: Container(
          color: Color.fromRGBO(9, 0, 0, 0.8),
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              widget = NotesPage();
                              selectedIndex = 0;
                            });
                            Navigator.of(context)
                                .pushReplacementNamed('/navigator');
                          },
                          child: Text(
                            "Back",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {
                            title_controller.text = "";
                            content_controller.text = "";
                          },
                          child: Text(
                            "Clean Text",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {
                              notes1[index].content = content_controller.text;
                              notes1[index].title = title_controller.text;


                              setState(() {
                                widget = NotesPage();
                                selectedIndex = 0;
                              });

                              Navigator.of(context)
                                  .pushReplacementNamed('/navigator');
                            },
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white54),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      controller: title_controller,
                      maxLines: 1,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Title",
                        hintStyle: TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        enabled: true,
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextField(
                      controller: content_controller,
                      maxLines: 30,
                      autofocus: true,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Write note here",
                        hintStyle: TextStyle(color: Colors.white),
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        enabled: true,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
