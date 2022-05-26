import 'package:flutter/material.dart';
import '../Widgets/background_image.dart';

import '../Widgets/menu_page.dart';

class screen_menu extends StatefulWidget {
  const screen_menu({Key? key}) : super(key: key);

  @override
  State<screen_menu> createState() => _screen_menuState();
}

class _screen_menuState extends State<screen_menu> {
  @override
  Widget build(BuildContext context) {
    return
    Stack(children: [
 //      backgroudImage(),
      Scaffold(
//          backgroundColor: Colors.transparent,
         // appBar: AppBar(title: Text("User Menu"),
          //leading:



          body:
          menu_page()
      ),

    ],)
;
  }
}
