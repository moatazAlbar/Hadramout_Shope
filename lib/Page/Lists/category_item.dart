import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';

import 'listwidget.dart';

class Category_Items extends StatefulWidget {
  TB_Category _tb_category;
   Category_Items(this._tb_category);

  @override
  _Category_ItemsState createState() => _Category_ItemsState();
}

class _Category_ItemsState extends State<Category_Items> {
  @override
  Widget build(BuildContext context) {
    List<TB_Item>_items=Itemsmodel.where((element) => element.IdCategory==widget._tb_category.Id_Category);

    return ListWidget(_items);
  }
}
