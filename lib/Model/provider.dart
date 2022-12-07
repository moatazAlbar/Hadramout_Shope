import 'package:flutter/cupertino.dart';
import 'package:shopping/Model/models.dart';

class Provider_User with ChangeNotifier{
  TB_User _tb_user;
  TB_User get user{
    return _tb_user;
  }

  void UserProvider(TB_User _user){
    _tb_user=_user;
    notifyListeners();
  }
}