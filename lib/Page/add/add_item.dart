import 'package:flutter/material.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/widgets/buttons.dart';
import 'package:shopping/widgets/textfiled.dart';

class Add_Items extends StatefulWidget {
  TB_Item _tb_item;
   Add_Items(this._tb_item);

  @override
  _Add_ItemsState createState() => _Add_ItemsState();
}
TextEditingController _Name = new TextEditingController();
TextEditingController _Price = new TextEditingController();
TextEditingController _Detaile = new TextEditingController();
class _Add_ItemsState extends State<Add_Items> {

  String PicurePath = "images/r0.webp";
  @override
    Widget build(BuildContext context) {
      widget._tb_item.UserId!=null?complet():null;
      return Scaffold(
          body: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)
                  ),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:AssetImage(PicurePath),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(80.0),
                            boxShadow: [
                              BoxShadow( // this is shadow black around image
                                blurRadius: 5.0,
                                color: Colors.black,
                                offset: Offset(5.0, 6.0),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          right: 20.0,
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                                size: 28.0,
                              ),
                            ),
                            onTap: () {

                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              textfiledstyle(Icons.person, "ادخل اسم المنتج", _Name,1),
              textfiledstyle(Icons.description, "تفاصيل المنتج", _Detaile,3),
              textfiledstyle(Icons.monetization_on, "سعر المنتج", _Price,1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttons()
                ],
              ),
            ],

          )
      );
    }
  complet(){
    _Name.text=widget._tb_item.FullName;
    _Detaile.text=widget._tb_item.Detailes;
    _Price.text=widget._tb_item.Price.toString();
    PicurePath=widget._tb_item.Picutre;
  }
  buttons(){
    if(widget._tb_item.UserId!=null){
      return   buttonstyle("اضافة",(){},270,23,Colors.white,Colors.blue.shade900,Icons.filter_none,0);
    }
    else{
      return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonstyle("حذف",(){},100,22,Colors.white,Colors.blue.shade900,Icons.delete,0),
          buttonstyle("تعديل",(){},100,22,Colors.white,Colors.blue.shade900,Icons.edit,0),
          buttonstyle("الغاء",(){},100,22,Colors.white,Colors.blue.shade900,Icons.cancel,0),
        ],
      );
    }
  }
  }


