import 'package:flutter/material.dart';
import 'package:qtdot/Widgets/widget_edittext.dart';
import '../Controller/models.dart';

class customer_entry extends StatefulWidget {
//  final menu_model mm;
  final Map<dynamic,dynamic> headermap;
  const customer_entry({Key? key,
    //required this.mm,
    required this.headermap}) : super(key: key);
  @override
  State<customer_entry> createState() => _customer_entryState();
}

class _customer_entryState extends State<customer_entry> {
  late TextEditingController CustName,FatherName,CNIC,HomeAddress,
      OfficeAddress,Designation,PhoneHome,PhoneOffice,Salary,LastPurchaseRef,
      LastPurchaseItem;
  @override
  void initState() {
    CustName = new TextEditingController();
    FatherName = new TextEditingController();
    CNIC = new TextEditingController();
    HomeAddress = new TextEditingController();
    OfficeAddress = new TextEditingController();
    Designation = new TextEditingController();
    PhoneHome = new TextEditingController();
    PhoneOffice = new TextEditingController();
    Salary = new TextEditingController();
    LastPurchaseRef = new TextEditingController();
    LastPurchaseItem = new TextEditingController();

    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    CustName.dispose();
    FatherName.dispose();
    CNIC.dispose();
    HomeAddress.dispose();
    OfficeAddress.dispose();
    Designation.dispose();
    PhoneHome.dispose();
    PhoneOffice.dispose();
    Salary.dispose();
    LastPurchaseRef.dispose();
    LastPurchaseItem.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
    Column(children: [
      textfield(tec: CNIC,label: 'CNIC',headermap: widget.headermap,),
      textfield(tec: CustName,label: 'CustName',headermap: widget.headermap,),
      textfield(tec: FatherName,label: 'FatherName',headermap: widget.headermap,),
      textfield(tec: HomeAddress,label: 'HomeAddress',headermap: widget.headermap,),
      textfield(tec: OfficeAddress,label: 'OfficeAddress',headermap: widget.headermap,),
      textfield(tec: Designation,label: 'Designation',headermap: widget.headermap,),
      textfield(tec: PhoneHome,label: 'PhoneHome',headermap: widget.headermap,),
      textfield(tec: PhoneOffice,label: 'PhoneOffice',headermap: widget.headermap,),
      textfield(tec: Salary,label: 'Salary',headermap: widget.headermap,),
      textfield(tec: LastPurchaseRef,label: 'LastPurchaseRef',headermap: widget.headermap,),
      textfield(tec: LastPurchaseItem,label: 'LastPurchaseItem',headermap: widget.headermap,),



    ]
      ,);
  }

}

