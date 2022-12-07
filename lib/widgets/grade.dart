import 'package:flutter/material.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/Page/Lists/category_item.dart';

import '../Model/Items_models.dart';
import 'text.dart';

  List<TB_Category>_category=Categorymodel;
  Categorbuild(BuildContext context){
    return Container(
      height: 500,
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: List.generate(_category.length, (index) {
          return InkWell(
            onTap: ()=>Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Category_Items(_category[index]))),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),bottomRight:  Radius.circular(22)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade900,
                        blurRadius: 2,
                        spreadRadius: 1
                    )
                  ]
              ),
              margin: EdgeInsets.all(10),
              height: 270,
              child: Column(
                children: [
                  Container(
                      height: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(

                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(_category[index].Picure),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),bottomRight:  Radius.circular(22)),
                      )
                  ),
                  textstyle("${_category[index].Name}",20,Colors.blue,TextAlign.center,1)

                ],
              ),
            ),
          ) ;
        }),
      ),);
  }
