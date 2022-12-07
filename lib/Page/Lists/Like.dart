import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Model/provider.dart';
import 'package:shopping/Page/Lists/listwidget.dart';
class Likes extends StatefulWidget {
   Likes();

  @override
  _LikesState createState() => _LikesState();
}
List<TB_Item> _items;
List<TB_Likes>_likes=Likesmodel;
TB_User _user;
class _LikesState extends State<Likes> {

  @override
  Widget build(BuildContext context) {
    _user=context.watch<Provider_User>().user;
    return ListWidget(_items);
  }
}
