import 'package:flutter/material.dart';
class editpwd extends StatefulWidget {
  final TextEditingController tec;
  final String label;
  const editpwd({Key? key,required this.tec,required this.label}) : super(key: key);

  @override
  State<editpwd> createState() => _editpwdState();
}

class _editpwdState extends State<editpwd> {
  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 10,
        child:
        Container(padding: EdgeInsets.all(5),child:
    TextField(

      obscureText: true,
      controller: widget.tec,
      decoration:  InputDecoration(
        isDense: true,
        border: InputBorder.none,
      labelText:widget.label,
    ),)
    ),);
  }
}
