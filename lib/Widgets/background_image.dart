import 'package:flutter/material.dart';


Widget backgroudImage() {
  return ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: [Colors.white, Colors.white60],
 //     colors: [Colors.black, Colors.black12],
      begin: Alignment.bottomCenter,
      end: Alignment.center,
    ).createShader(bounds),
    blendMode: BlendMode.darken,
    child: Container(
color: Colors.white,
      /*
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/appicons/img.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
       */

    ),
  );
}
