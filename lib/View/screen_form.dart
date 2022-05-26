import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qtdot/Controller/models.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';
import '../Controller/constants.dart';
import '../Controller/controller.dart';
import '../Widgets/customer_defination.dart';
import 'form_body.dart';
class customer_def extends StatefulWidget {
  final menu_model mm;
  const customer_def({Key? key,required this.mm}) : super(key: key);

  @override
  State<customer_def> createState() => _customer_defState();
}

class _customer_defState extends State<customer_def> {
  Map<dynamic,dynamic> headermap = new Map();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.mm.name),),
      body:
      SingleChildScrollView(child:
        Padding(padding: EdgeInsets.all(10),child:

    FromScreen(widget.mm,headermap))),
      bottomNavigationBar:  Container(

          padding: EdgeInsets.all(5),
          width: 80,child: RaisedButton(
          color: Colors.green,
          child: Text("Save",style: TextStyle(color: Colors.white),),onPressed:(){
        saverecord();
      })),




    );
  }

  void saverecord() async{

    ProgressDialog pd = ProgressDialog(context: context);
    pd.show(max: 5000, msg: "loading...");

    String  url = Constants.loginCredential.server_url + "/api/post?docstatus=A";
    headermap['dbid']     =     Constants.loginCredential.db_name.toString();
    headermap['menuid']   =   widget.mm.id.toString();
    headermap['vtype']    =   widget.mm.doctype.toString();
    headermap['userid']   =    Constants.user_info!.userid.toString();
    headermap['location_id']   =    Constants.selectedcompany!. id ;
    headermap['date']   =   DateFormat('yyyy-MM-dd').format(DateTime.now());

    await apicall(context, 'post', url, json.encode(headermap), true).then((response)
    {
      if (response!= null)
      {
        if (response.statusCode == 200)
        {

          pd.close();
          Navigator.pop(context);

        }

      }


    });






  }
}
