import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/widgets/text.dart';

import 'item_store.dart';

class Users_Stores extends StatefulWidget {
   Users_Stores();

  @override
  _Users_StoresState createState() => _Users_StoresState();
}

class _Users_StoresState extends State<Users_Stores> {
  List<TB_User>_Store=Usersmodel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("جميع المتاجر"),
      ),
      body:  Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: _Store.length,
            itemBuilder: (BuildContext context,int index){
              return   InkWell(
                onTap: ()=>Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Items_Store(_Store[index]))),
                child: Container(

                  padding: EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color:Colors.blue.shade900,
                            spreadRadius: 0.1,
                            blurRadius: 3
                        )
                      ],
                      borderRadius: BorderRadius.circular(22)
                  ),
                  margin: EdgeInsets.all( 5),

                  child: ListTile(
                    title: textstyle(_Store[index].FullName,20,Colors.black,TextAlign.start,1),
                    subtitle: textstyle(_Store[index].Location,16,Colors.black54,TextAlign.start,0),
                    leading:  Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color:Colors.blue.shade900,
                                spreadRadius: 0.1,
                                blurRadius: 3
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(_Store[index].Picutre),
                              fit: BoxFit.fill
                          )

                      ) ,),
                    trailing:Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade900
                        ),
                        child: Icon(Icons.arrow_forward,color: Colors.white,)),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
