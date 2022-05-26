import 'dart:convert';
import 'package:qtdot/Controller/models.dart';
import 'package:flutter/material.dart';
import 'package:qtdot/Widgets/widget_edittext.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';
import '../Controller/constants.dart';
import '../Controller/controller.dart';
import 'widget_editpwd.dart';
import 'package:qtdot/View/screen_menu.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {

  late TextEditingController tec_usernam,tec_password;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 300,
        padding: EdgeInsets.all(10),child:
        SingleChildScrollView(child:

      Column(children: [
Container(height: 200,width: 200,child:
        Hero(
        tag: 'logo',
        child: Image.asset(
        'assets/appicons/logo.png',
              fit: BoxFit.contain,
            ),
        ),),

//      Text("User Login"),
      textfield(tec: tec_usernam,label: "User Name",headermap: {},),
      editpwd(tec: tec_password,label: "Password"),
      Container(

        padding: EdgeInsets.all(20),
        
        width: 160,child: RaisedButton(child: Text("Login"),onPressed:(){
        logincontroller();
      }



      ),)

    ],),));
  }
  @override
  void dispose() {
    tec_usernam.dispose();
    tec_password.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    tec_usernam = new TextEditingController();
    tec_password = new TextEditingController();
    // TODO: implement initState
    super.initState();
  }



  _loadusermenuerp() async{
    Constants.menuall.clear();
    String url = Constants.loginCredential.server_url+'/api/get?db='+ Constants.loginCredential.db_name! +'&table=umenu&userid= '+Constants.user_info!.role_id.toString()+'&location_id=RP';
    print(url);
   await apicall(context, 'get', url, "",  false).then((response)
    async{

      try
      {
        if(response!.statusCode == 200) {
          var menulist = json.decode(response.body) as List;
          Constants.menuall =  await menulist.map((job) => new menu_model.fromJson(job)).toList();
         // print(Constants.menuall.length.toString());
        }
        else
        {

//          showsnackbar("Network Error",context,true);
        }

      }
      catch(Exception)
      {

      }

    });
  }

  void logincontroller() async{


    ProgressDialog pd = ProgressDialog(context: context);
    pd.show(max: 5000, msg: "loading...");

    String url = Constants.loginCredential.server_url + "/api/post";
    Map<String,Object> value = new Map();
    value['Name']  = tec_usernam.text;
    value['password']  =tec_password.text;
    value['dbid']  =Constants.loginCredential.db_name!;
    print(url);
    print(json.encode(value));
   await apicall(context, 'post', url, json.encode(value),  true).then((response) async{
      if (response!.statusCode == 200) {
  //      print(response.body);
        Map<dynamic, dynamic> values = json.decode(response.body) as Map<dynamic, dynamic>;
        if (values.containsKey('error404')) {
//          print("error");
          print(values['message']);

//        showsnackbar(values['message'], context, true);
        }
        else {
          print('loading menu');
          Constants.user_info = user.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
          Constants.selectedcompany = Constants.user_info!.location_det[0];
          await _loadusermenuerp();
        }
      }
    });




    pd.close();


    if (Constants.menuall.length>0)
    {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const screen_menu()),
      );
    }

  }

}
