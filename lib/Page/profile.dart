import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/Model/provider.dart';
import 'package:shopping/Page/interface.dart';
import 'register.dart';

import 'navbar.dart';
class Profile extends StatefulWidget {
   Profile();

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<TB_Role>_roles=Roles;
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: ()async{
        return Navigator.push(context,
            MaterialPageRoute(builder: (context)=>Navbar()));
      },
      child: Scaffold(
        body: Container(
            child:SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(77),bottomRight: Radius.circular(77) )
                        ),
                        padding: EdgeInsets.only(top: 100),
                        width: double.infinity,

                        child:
                            Container(

                              margin: EdgeInsets.all(20),

                              height: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage("${context.watch<Provider_User>().user.Picutre}"),
                                  fit: BoxFit.fill,
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
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade900,
                            spreadRadius: 1,
                            blurRadius: 3
                          )
                        ],
                        borderRadius: BorderRadius.circular(55)
                    ),
                    child: Column(
                      children: [

                        ListTile(
                            title: text("The Name is ${context.watch<Provider_User>().user.FullName}",Colors.black),
                            subtitle:text("He is "+retRole(context.watch<Provider_User>().user.RoleId), Colors.blue)

                        ),

                       text("The Location in ${context.watch<Provider_User>().user.Location} ",Colors.black),
                       text("${context.watch<Provider_User>().user.Detailes}",Colors.black),
                       text("The Number is ${context.watch<Provider_User>().user.Number}",Colors.black)

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(80.0),
                      boxShadow: [
                        BoxShadow( // this is shadow black around image
                          blurRadius: 5.0,
                          color: Colors.black,
                          offset: Offset(3.0, 2.0),
                        ),
                      ],
                    ),
                    child: MaterialButton(
                      onPressed: ()=>Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Registeres(),)
                      ),
                      child: text("Edite",Colors.white)
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
  text(String text,Color _color){
    return  Container(
      margin: EdgeInsets.all(19),
      child: Text(text,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
          color: _color
      ),),
    );
  }
  retRole(int id){
    TB_Role role;
  role= _roles.where((element) => element.IdRole==id).first;
  return role.RoleName;
  }
}
