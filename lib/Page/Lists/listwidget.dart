import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/widgets/text.dart';

import '../details.dart';
class ListWidget extends StatefulWidget {
  List<TB_Item>_item;
   ListWidget(this._item);

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  String _btn2SelectedVal;
  List<TB_User>_user=Usersmodel;
  List<TB_Category>_categore=Categorymodel;
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String Itemselct='اختار';
  static  List<String> menuItem=<String>[];
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0;i<10;i++){
      if(!menuItem.contains(_categore[i].Name))
        menuItem.add(_categore[i].Name);
    }
    _dropDownMenuItems=menuItem
        .map(
          (String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      ),
    )
        .toList();
    print(widget._item.length);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity/2,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),

          ),
          child: Center(
            child: TextField(
              //controller: search,
              onChanged: (val){

              },
              //controller: search,
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.search),
                suffixIcon:
                IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: (){
                    //search.text="";
                  },
                ),
                hintText: "ابحث هنا",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: Container(

        child: ListView(
          children: [
            Chosing(),
            Container(
              margin: EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.grey.shade200,
              ),

              child:widget._item.length==0?Center(child:Container(
                  padding: EdgeInsets.all(50),
                  child: Text("Nothing yet"))):items(context) ,
            )
          ],
        ),
      ),
    );
  }
  Chosing(){
    return ListTile(
      trailing: Text(': نوع المنتج '),
      title: Container(
        margin: EdgeInsets.only(right: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: _btn2SelectedVal,
              hint: Text(Itemselct,textAlign: TextAlign.center,),
              onChanged: (String newValue) {
                setState(() {
                  _btn2SelectedVal = newValue;
                });
              },
              items: _dropDownMenuItems,
            ),
          ],
        ),
      ),
    );
  }
  items(BuildContext context){
    return  Container(
      margin: EdgeInsets.all(5),
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: widget._item.length,
          itemBuilder: (BuildContext context,int index){
            return InkWell(
              onTap: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Details(widget._item[index]))),
              child: Container(
                height: 170,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 3
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),


                ) ,
                child: Container(
                  child:  Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                            boxShadow:[
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 3
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(widget._item[index].Picutre),
                                fit: BoxFit.fill
                            ),

                          ) ,
                        ),
                        title: textstyle(widget._item[index].FullName,22,Colors.black,TextAlign.start,1),
                        subtitle: textstyle(widget._item[index].Detailes,18,Colors.black54,TextAlign.start,1),
                        trailing:textstyle("Price\n ${widget._item[index].Price}",18,Colors.black54,TextAlign.start,1),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all( 10),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              boxShadow:[
                                BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 1,
                                    blurRadius: 2
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(picuser(widget._item[index].UserId,0)),
                                  fit: BoxFit.fill
                              ),

                            ) ,
                          ),
                          Text(picuser(widget._item[index].UserId,1)),
                          IconButton(
                            icon: Icon(Icons.thumb_up_rounded,color: Colors.black,),
                            onPressed: (){
                              setState(() {

                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite_border,color: Colors.black,),
                            onPressed: (){
                              setState(() {
                              });

                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
  picuser(int id,int type){
    int s=0;
    for(int i=0;i<_user.length;i++){
      if( _user[i].IdUser==id){
        return type==0? _user[i].Picutre:_user[i].FullName;
      }
    }
    return "images/person3.png";
  }
}
