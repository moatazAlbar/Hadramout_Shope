import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/widgets/text.dart';

import '../edite_delete_user.dart';

class Users extends StatefulWidget {
  Users();

  @override
  _UsersState createState() => _UsersState();
}
class _UsersState extends State<Users> {
  List<TB_User>_users=Usersmodel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        margin: EdgeInsets.only(top: 22),
        child: ListView(
          children: [
            user(context)
          ],
        ),
      )
    );
  }
  user(BuildContext context){
    return
       ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: _users.length,
          itemBuilder:(BuildContext context,int index){
            return InkWell(
              onTap: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Edite_DeleteUser(_users[index]))),
              child: Container(
                width: 200,
                margin: EdgeInsets.all(5),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 3,
                            spreadRadius: 1
                        )
                      ]
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(_users[index].Picutre),
                            fit: BoxFit.fill
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 3,
                                spreadRadius: 1
                            )
                          ]
                      ),
                    ),
                    title: textstyle(_users[index].FullName,
                        21,Colors.blue.shade900,TextAlign.start,1),
                    subtitle: textstyle(_users[index].Detailes,
                        14,Colors.black54,TextAlign.start,0),
                    trailing: textstyle(" المنشورت ${itempup(_users[index].IdUser)}",
                        14,Colors.black54,TextAlign.start,0),

                  ),
                ),
              ),
            );

          }
    );
  }
  itempup(int id){

    List<TB_Item>_item=Itemsmodel.where((element) => element.UserId==id).toList();
    return _item.length;
  }
}
