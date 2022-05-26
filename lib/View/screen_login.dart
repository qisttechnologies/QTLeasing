import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/background_image.dart';
import '../Widgets/login_page.dart';

class screen_login extends StatelessWidget {
  const screen_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Stack(
          children:
          [
 // backgroudImage(),
      Scaffold(
   //     backgroundColor: Colors.transparent,
    body:
    Align(
      alignment: AlignmentDirectional.center,
      child:login_page()),
    )]);
  }
}
