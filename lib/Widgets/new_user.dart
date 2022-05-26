import 'package:flutter/material.dart';
import 'package:qtdot/Widgets/widget_edittext.dart';

class newuser extends StatefulWidget {
  final Map<dynamic,dynamic> headermap;
  const newuser({Key? key,required this.headermap}) : super(key: key);

  @override
  State<newuser> createState() => _newuserState();
}

class _newuserState extends State<newuser> {
  late TextEditingController UserName;
  late TextEditingController FullName;
  late TextEditingController Password;
  late TextEditingController Email;
  late TextEditingController Mobile_No;
  late TextEditingController Locked;
  late TextEditingController Branch;
  late TextEditingController Department;


  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        textfield(tec: UserName,label: 'User Name',headermap: widget.headermap,),
        textfield(tec: FullName,label: 'Full Name',headermap: widget.headermap,),
        textfield(tec: Password,label: 'Password',headermap: widget.headermap,),
        textfield(tec: Email,label: 'Email',headermap: widget.headermap,),
        textfield(tec: Mobile_No,label: 'Mobile No.',headermap: widget.headermap,),
        textfield(tec: Locked,label: 'Locked',headermap: widget.headermap,),
        textfield(tec: Branch,label: 'Branch',headermap: widget.headermap,),
        textfield(tec: Department,label: 'Department',headermap: widget.headermap,),

      ],);
  }

  @override
  void initState() {

    UserName = new TextEditingController();
    FullName = new TextEditingController();
    Password = new TextEditingController();
    Email = new TextEditingController();
    Mobile_No = new TextEditingController();
    Locked = new TextEditingController();
    Branch = new TextEditingController();
    Department = new TextEditingController();

    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    UserName.dispose();
    FullName.dispose();
    Password.dispose();
    Email.dispose();
    Mobile_No.dispose();
    Locked.dispose();
    Branch.dispose();
    Department.dispose();

    // TODO: implement dispose
    super.dispose();
  }
}
