
import 'package:flutter/cupertino.dart';

import '../Controller/models.dart';
import '../Widgets/customer_defination.dart';
import '../Widgets/new_user.dart';
import '../Widgets/user_role.dart';

FromScreen (menu_model menu,Map<dynamic,dynamic> headermap)
{
  return
    menu.id.toString()=="5"?
    customer_entry(headermap: headermap,):
    menu.id.toString()=="18"?
    user_role(headermap: headermap,):
    menu.id.toString()=="17"?
    newuser(headermap: headermap,)


        :Container();

}