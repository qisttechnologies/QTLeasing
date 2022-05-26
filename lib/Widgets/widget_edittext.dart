import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  final TextEditingController tec;
  final String label;
 final Map<dynamic,dynamic> headermap;
  const textfield({Key? key,required this.tec,required this.label,required this.headermap}) : super(key: key);

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  @override
  Widget build(BuildContext context) {
    return
    Card(

      elevation: 10,
      child:
      Container(padding: EdgeInsets.all(5),child:
      TextField(

      onChanged: (value){
      widget.headermap[widget.label] = value;
      },
      controller: widget.tec,
      decoration:  InputDecoration(
        isDense: true,
        border: InputBorder.none,
      labelText:widget.label,
      ),
    ),),);
  }
}
