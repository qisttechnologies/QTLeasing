import 'package:flutter/material.dart';
import 'package:qtdot/Widgets/widget_edittext.dart';

class user_role extends StatefulWidget {
  final Map<dynamic,dynamic> headermap;
  const user_role({Key? key,required this.headermap}) : super(key: key);

  @override
  State<user_role> createState() => _user_roleState();
}

class _user_roleState extends State<user_role> {

  late TextEditingController tec_role;


  @override
  Widget build(BuildContext context) {
    return
    Column(children: [
    textfield(tec: tec_role,label: 'Role Name',headermap: widget.headermap,),
    ],);
  }

  @override
  void initState() {
    tec_role = new TextEditingController();
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    tec_role.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
