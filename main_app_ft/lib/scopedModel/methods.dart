import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:main_app_ft/scopedModel/mainModel.dart';
import 'dart:io';
import 'package:scoped_model/scoped_model.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';



mixin Methods on Model {
  String email='',pass='';

  GetCredentials()async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    print(email);
    print(pass);
    SetEmail(pref.getString("email"));
    SetPass(pref.getString("pass"));
    notifyListeners();
  }
  Auth(){
    if(email=='' && pass=='')
      return false;
    else
      return true;
  }
  GetEmail(res){
    return res;
  }
  SetEmail(String em)
  {
    email=em;
  }
  SetPass(String ps)
  {
    pass=ps;
  }
  GetPass(res){
    return res;
  }

  SetCredentials(email_in,pass_in)async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("email", email_in);
    pref.setString("pass", pass_in);
    GetCredentials();
  }

}