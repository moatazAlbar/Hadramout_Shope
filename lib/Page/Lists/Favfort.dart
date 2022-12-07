import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Model/provider.dart';

import 'listwidget.dart';

class Faverote extends StatefulWidget {
   Faverote();

  @override
  _FaveroteState createState() => _FaveroteState();
}

class _FaveroteState extends State<Faverote> {

  List<TB_Item> _items;
  List<TB_Faverote>_faveort=faverot;
  TB_User _user;

  @override
  Widget build(BuildContext context) {
    _user=context.watch<Provider_User>().user;
    fav();
    return ListWidget(_items);
  }
  fav(){
    for(int i=0;i<_faveort.length;i++){
      _items=Itemsmodel.where((element) =>
      element.IdCategory==_faveort[i].CategoryId&&_faveort[i].UsersId==_user.IdUser
      ).toList();
    }
  }
}
