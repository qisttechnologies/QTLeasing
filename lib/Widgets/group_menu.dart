import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../Controller/constants.dart';
import '../Controller/models.dart';
import '../View/screen_form.dart';
import '../style/style.dart';
class group_menu extends StatefulWidget {
  final menu_model parent_model;
  const group_menu({Key? key,required this.parent_model}) : super(key: key);
  @override
  State<group_menu> createState() => _group_menuState();
}

class _group_menuState extends State<group_menu> {

  @override
  Widget build(BuildContext context) {

    var child_list = Constants.menuall.where((i) => i.parent == widget.parent_model.id).toList();

    return  Container(child:
    Column(
//        mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

  Container(padding: EdgeInsets.only(left: 20),
  child:
        Container(
          padding: EdgeInsets.all(5, // Space between underline and text
          ),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(
                color: Colors.amber,
                width: 1.0, // Underline thickness
              ))
          ),
          child: Text(
            widget.parent_model.name,
            style: style_menuparent,
          ),
        ),),


        StaggeredGrid.count(
          crossAxisCount: 4,
          children: List.generate(
              child_list.length,
                  (index) {
                return
                  GestureDetector(
                    onTap: () {
                      navigatescreen(child_list[index]);
                    },
                    child:

                    Container(
                          padding: EdgeInsets.all(10),
                      child:

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 10,),
                          RaisedButton(
                            color: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),

                            onPressed: () {},



                            child:
                            Container(
                              height: 70,width: 40,
                                padding: EdgeInsets.all(5),
                                child:
                            Image.asset('assets/menuicons/'+child_list[index].id.toString()+'.png',
                            width: 40,
                              height: 60,
                              errorBuilder: (context, url, error) => new Icon(Icons.error,size: 40,),
                            )),
                          ),
                          /*
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30), //border corner radius
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5), //color of shadow
                                  spreadRadius: 5, //spread radius
                                  blurRadius: 7, // blur radius
                                  offset: Offset(0, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                //you can set more BoxShadow() here
                              ],
                            ),
                            padding: EdgeInsets.all(10),
                            width: 80,height: 60,child:

                          Image.asset('assets/menuicons/'+child_list[index].id.toString()+'.png',
//                            width: 40,
  //                          height: 40,
                            errorBuilder: (context, url, error) => new Icon(Icons.error,size: 40,),
                          ),),

                           */
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 45
                            ,child:
                          Text(child_list[index].name.toString(),style: inputstyle,maxLines: 2,
                            textAlign: TextAlign.center,

                          )
                            ,)
                        ],
                      ),),
                  );
              }
          ),

          mainAxisSpacing: 3.0,
          crossAxisSpacing: 4.0,
        )
      ],),);
  }

  void navigatescreen(menu_model mm)
  {
    //mm.id.toString()=="5"?
    Future.delayed(new Duration(milliseconds: 100), ()
    {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => customer_def(mm: mm,)));});
//        :
  //  print('comming soon');



  }




}
