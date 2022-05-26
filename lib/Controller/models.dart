
class LoginCredential {

//  String?service_layer;
  String server_url;
  String? db_name;
  String? user_name;
  String? password;
  String? Server_type;

  LoginCredential({required this.server_url, this.db_name,
    this.user_name, this.password,this.Server_type});

  Map<String, dynamic> toJson() =>
      {
//        'service_layer': service_layer.toString(),
        'server_url': server_url.toString(),
        'db_name': db_name.toString(),
        'user_name': user_name.toString(),
        'password': password.toString(),
        'Server_type': Server_type.toString(),
      };

  factory LoginCredential.fromJson(Map<String, dynamic> json) {
    return LoginCredential(

//      service_layer: json['service_layer'],
      server_url: json['server_url'],
      db_name: json['db_name'],
      user_name: json['user_name'],
      password: json['password'],
      Server_type :json['Server_type'],
    );
  }


}

class menu_model {
  final int parent;
  final String? doctype;
  final int id;
  final String name;
  final String? translate;
  final String? form_name;
  final int? doccount;
  final String? base_table;
  final String? target_table;
  final String? table_name;
  final String? transtype;
  final bool? ad;
  final bool? edit;
  final bool? approve;
  final bool? authorize;
  final bool? frmsetting;
  final bool? rptupload;
  final bool? rptdownload;
  final bool? cancell;
  final bool? del;
  final bool? print_direct;
  final bool? print_preview;
  final String? type;

  menu_model({required this.parent, this.type, this.doctype,required this.id,required this.name, this.translate, this.form_name, this.doccount, this.base_table, this.target_table, this.table_name,this.transtype, this.ad,this.edit,this.del,this.approve,this.cancell,this.authorize,
  this.frmsetting,this.rptupload,this.rptdownload,
  this.print_direct,this.print_preview
  });
  factory menu_model.fromJson(Map<String, dynamic> json) {
    return menu_model(
      parent: json['parent'],
//      type: json['type'] as String,
      doctype: json['doctype'],
      id: json['id'],
      name: json['name'] ,
      translate: json['translate'] ,
      form_name: json['form_name'] ,
      doccount: json['doccount'],
      base_table: json['base_table'] ,
      target_table: json['target_table'] ,
      table_name: json['table_name'] ,
      transtype : json['transtype']??"",
      ad: json['ad'],
      edit: json['edit'],
      del: json['del'],
      approve: json['approve'],
      cancell: json['cancell'],
      authorize: json['authorize'],
      frmsetting: json['frmsetting'],
      rptupload: json['rptupload'],
      rptdownload: json['rptdownload'],
      print_direct: json['print_direct'],
      print_preview: json['print_preview'],
    );
  }

}

class user {

//  String? business_id;
  int? userid;
  String username;
//  String password;
  int? emp_id;
  String? emp_id_name;
  int? saleman_id;
  String? saleman_id_name;
  String? posting_user;
  String? posting_password;
  int? whs_id;
  String? whs_id_name;
  String? email;
  int? mobile;
  int? lang_id;
  String? lang_id_name;
  int? font_size;
  int? font_id;
  String? font_id_name;
  int? theme_id;
  String? theme_id_name;
  String? short_code;
  String SessionId;
  int? role_id;
  List<company_list>  location_det;

  user({
    required this.userid,
    required this.username,
//    required this.password,
    this.emp_id,
    this.emp_id_name,
    this.saleman_id,
    this.saleman_id_name,
    this.posting_user,
    this.posting_password,
    this.whs_id,
    this.whs_id_name,
    this.email,
    this.mobile,
    this.lang_id,
    this.lang_id_name,
    this.font_size,
    this.font_id,
    this.font_id_name,
    this.theme_id,
    this.theme_id_name,
    this.short_code,
    required this.SessionId,
    this.role_id,
    required this.location_det,
  });

  Map<dynamic, dynamic> toJson() =>
      {
        'userid':userid,
        'username':username,
        'emp_id':emp_id,
        'emp_id_name':emp_id_name,
        'saleman_id':saleman_id,
        'saleman_id_name':saleman_id_name,
        'posting_user':posting_user,
        'posting_password':posting_password,
        'whs_id':whs_id,
        'whs_id_name':whs_id_name,
        'email':email,
        'mobile':mobile,
        'lang_id':lang_id,
        'lang_id_name':lang_id_name,
        'font_size':font_size,
        'font_id':font_id,
        'font_id_name':font_id_name,
        'theme_id':theme_id,
        'theme_id_name':theme_id_name,
        'short_code':short_code,
        'role_id': role_id,
        'SessionId': SessionId,
        'location_det': location_det,

      };

  factory user.fromJson(Map<String, dynamic> json) {
    return user(
        userid : json['userid'],
        username  :json['username'],
        //pas  :json['password'],
        emp_id  :json['emp_id'],
        emp_id_name  : json['emp_id_name'],
        saleman_id  :json['saleman_id'],
        saleman_id_name  :json['saleman_id_name']??"",
        posting_user  :json['posting_user']??"",
        posting_password  :json['posting_password']??"",
        whs_id : json['whs_id'],
        whs_id_name : json['whs_id_name'],
        email : json['email'],
        mobile : json['mobile'],
        lang_id :json['lang_id'],
        lang_id_name :json['lang_id_name'],
        font_size :json['font_size'],
        font_id :json['font_id'],
        font_id_name :json['font_id_name'],
        theme_id :json['theme_id'],
        theme_id_name :json['theme_id_name'],
        short_code :json['short_code'],
        SessionId: json['short_code']??"",
        role_id :json['role_id']?? 1,
        location_det : List.from(json['location_det']).
        map((job) => new company_list.fromJson(job)).toList()
    );
  }

}

class company_list {

  int  id;
  String name;


  company_list({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'name': name,
      };

  factory company_list.fromJson(Map<String, dynamic> json) {
    return company_list(
      id: json['id'],
      name: json['name'],
    );
  }

}

