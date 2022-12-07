import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';

import 'listwidget.dart';

class All_Items extends StatefulWidget {
  const All_Items();

  @override
  _All_ItemsState createState() => _All_ItemsState();
}

class _All_ItemsState extends State<All_Items> {

  List<TB_Item> _items=Itemsmodel;
  TB_User _user;

  @override
  Widget build(BuildContext context) {
    return ListWidget(_items);
  }

}
