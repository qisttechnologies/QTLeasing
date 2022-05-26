import 'package:flutter/material.dart';
import '../Controller/controller.dart';
import '../Widgets/background_image.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {



  @override
  void initState() {
    // TODO: implement initState
    Controllers.navigatetologin(this.context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return
      Stack(
      children:
      [
      backgroudImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body:
        Center(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 250,width: 250,child:
          Hero(
            tag: 'logo',
            child: Image.asset(
              'assets/appicons/logo.png',
              fit: BoxFit.contain,
            ),
          ),),

          Container(height: 50,
            width:50,
          child: CircularProgressIndicator(),
          )

        ],)




        ),
      )
      ]
      );
  }
}
