import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/Page/Lists/listwidget.dart';

class Items_Store extends StatefulWidget {
  TB_User _tb_user;
   Items_Store(this._tb_user);

  @override
  _Items_StoreState createState() => _Items_StoreState();
}

class _Items_StoreState extends State<Items_Store> {
  
  @override
  Widget build(BuildContext context) {
    List<TB_Item>_items=Itemsmodel.where((element) => element.UserId==widget._tb_user.IdUser).toList();
    return ListWidget(_items);
  }
}
