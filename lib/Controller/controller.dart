import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';
import '../View/screen_login.dart';
import '../View/screen_menu.dart';
import 'constants.dart';
import 'models.dart';
import 'package:http/http.dart' as http;



Future<http.Response?> apicall(BuildContext context,String type,String url,String Bodyjson,bool dialogvisible) async {

  var response;
  Map<String, String> headers = new Map();
  headers['Content-Type'] = "application/json";
  headers['Accept'] = "*/*";
  headers['Access-Control-Allow-Headers'] = "Content-Type";




  try {
    if (type.toLowerCase() == "post") {

      try {
        await Future.delayed(Duration(milliseconds: 100), () async {
          response =
          await http.post(Uri.parse(url), headers: headers, body: Bodyjson);
        });



//         print(response.statusCode.toString() + response.body.toString());

//        print(response);
      }
      catch (_) {
//        showsnackbar('connectionerror',context,true);
      }
    }


    else if (type.toLowerCase() == "put") {
      try {
        await Future.delayed(Duration(milliseconds: 100), () async {
          response =
          await http.put(Uri.parse(url), headers: headers, body: Bodyjson);
        });
      }
      catch (_) {
        //showsnackbar('connectionerror',context,true);
      }
    }

    // delete
    else if (type.toLowerCase() == "delete") {
      try {
        await Future.delayed(Duration(milliseconds: 100), () async {
          response = await http.delete(Uri.parse(url));
        });

      }
      catch (_) {
        //showsnackbar('connectionerror',context,true);
      }
    }

    // for get data
    else if (type.toLowerCase() == "get") {
      try {
        print(url);
        await Future.delayed(Duration(milliseconds: 100), () async {
          response = await http.get(Uri.parse(url));

        });

//         print(response.statusCode.toString() + response.body.toString());
      }
      catch (Exception) {
        //showsnackbar('connectionerror',context,true);
      }
    }
  }
  catch (exception) {


  }



  return response;

}


class Controllers {

  // for screen splash
static void navigatetologin(BuildContext context){
  Future.delayed(const Duration(milliseconds: 400), () {
// Here you can write your code
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const screen_login()),
    );
  });
}

}

