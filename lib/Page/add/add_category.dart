import 'package:flutter/material.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/widgets/buttons.dart';
import 'package:shopping/widgets/textfiled.dart';

class Add_Category extends StatefulWidget {
  TB_Category _tb_category;
   Add_Category(this._tb_category);

  @override
  _Add_CategoryState createState() => _Add_CategoryState();
}

class _Add_CategoryState extends State<Add_Category> {
  TextEditingController _Name=new TextEditingController();
  TextEditingController _Price=new TextEditingController();
  TextEditingController _Detaile=new TextEditingController();
  String PicurePath="images/r0.webp";
  @override
  Widget build(BuildContext context) {
    widget._tb_category.Id_Category!=null?complet():null;
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

          textfiledstyle(Icons.person, "???????? ?????? ????????????", _Name,1),
          textfiledstyle(Icons.description, "???????????? ????????????", _Detaile,3),
          textfiledstyle(Icons.monetization_on, "?????? ????????????", _Price,1),
          Column(
            children: [
              buttons()
            ],
          ),
        ],

      )
    );
  }

  complet(){
    _Name.text=widget._tb_category.Name;
    _Price.text=widget._tb_category.Picure.toString();
    PicurePath=widget._tb_category.Picure;
  }
  buttons(){
    if(widget._tb_category.Id_Category==null){
      return   buttonstyle("??????????",(){},270,23,Colors.white,Colors.blue.shade900,Icons.filter_none,0);
    }
    else{
      return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonstyle("??????",(){},25,100,Colors.white,Colors.blue.shade900,Icons.delete,1),
          buttonstyle("??????????",(){},25,100,Colors.white,Colors.blue.shade900,Icons.edit,1),
          buttonstyle("??????????",(){},25,100,Colors.white,Colors.blue.shade900,Icons.cancel,1),
        ],
      );
    }
  }
}
