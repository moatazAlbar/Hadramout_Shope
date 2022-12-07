import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/Model/provider.dart';
import 'package:shopping/Page/register.dart';
import 'package:shopping/widgets/textfiled.dart';
import 'package:provider/provider.dart';

import 'navbar.dart';

class Login extends StatefulWidget {
  const Login();

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<TB_User>_Users=Usersmodel;
  TextEditingController _UserName=new TextEditingController();
  TextEditingController _Password=new TextEditingController();
  String Rong="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),
                      bottomRight:  Radius.circular(100)
                  ),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10,left: 10),
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                              image: AssetImage("images/logo.png"),
                              fit: BoxFit.cover
                          )

                      ) ,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("تسجيل الدخول ",
                          style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )
                      ),
                    )
                  ],
                )
            ),
            textfiledstyle(Icons.person, "اسم المستخدم", _UserName,1),
            textfiledstyle(Icons.admin_panel_settings, "كلمة السر", _Password,1),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  width: 270,
                  height: 44,
                  child: MaterialButton(
                    onPressed: () {
                      int f=-1;
                      for(int i=0;i<_Users.length;i++){
                        if(_UserName.text==_Users[i].UserName&&_Password.text==_Users[i].Password){
                          print(_Users[i].IdUser);
                          f=_Users[i].IdUser;
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>Navbar()));
                          context.read<Provider_User>().UserProvider(_Users[i]);
                        }
                      }
                      setState(() {
                        f==-1?Rong="UserName or Password is Rong":Rong="";
                      });
                    },
                    child: Text("دخول",
                      style: TextStyle(color: Colors.white, fontSize: 27,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: ()=>Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Registeres())),
                          child: Text("اضغط هنا")),
                      Text("اذا كان لايوجد لديك حساب "),

                    ],
                  ),
                )
              ],
            ),
            Text("$Rong",textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            )

          ],

        ),
      )
    );
  }

}
