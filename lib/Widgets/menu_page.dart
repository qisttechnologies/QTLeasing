import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../Controller/constants.dart';
import '../style/style.dart';
import 'group_menu.dart';
class menu_page extends StatefulWidget {
  const menu_page({Key? key}) : super(key: key);
  @override
  State<menu_page> createState() => _menu_pageState();
}
class _menu_pageState extends State<menu_page> {
  @override
  Widget build(BuildContext context) {
    return

    SingleChildScrollView(
    child:
    Padding(padding: EdgeInsets.all(5),child:
    Column(
//              mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            color: Colors.grey,
            child:

            Row(children: [
              Container(height: 60,width: 60,child: Hero(
                tag: 'logo',
                child: Image.asset(
                  'assets/appicons/logo.png',
                  fit: BoxFit.contain,
                ),
              ))
            ],)




          ),

          for ( var i in Constants.menuall.where((element) => element.parent == 0).toList() )
              group_menu(parent_model:i)
        ])




    ));
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



}
