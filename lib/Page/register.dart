import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/Model/provider.dart';
import 'package:shopping/Page/interface.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Page/login.dart';
import 'package:shopping/Page/navbar.dart';
import 'package:shopping/widgets/buttons.dart';
import 'package:shopping/widgets/textfiled.dart';

class Registeres extends StatefulWidget {

   Registeres();

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Registeres> {
  bool _showpassword=false;
  String State;
  List<TB_User>_Users=Usersmodel;
  String Rong="";
  _RegisterState();
  String image="images/person3.png";
  TextEditingController _Name=new TextEditingController();
  TextEditingController _Number=new TextEditingController();
  TextEditingController _Location=new TextEditingController();
  TextEditingController _Detailes=new TextEditingController();
  TextEditingController _UserName=new TextEditingController();
  TextEditingController _Password=new TextEditingController();

  @override
  Widget build(BuildContext context) {

    context.watch<Provider_User>().user==null?print("null"):edite();
    return Scaffold(
      body:Register());
  }
  Register(){
    return ListView(
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
                        color: Colors.white,
                        image: DecorationImage(
                          image:AssetImage(image),
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
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 28.0,
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

        textfiledstyle(Icons.person, "الاسم كامل", _Name,1),
        textfiledstyle(Icons.phone, "رقم الجوال", _Number,1),
        textfiledstyle(Icons.location_on_sharp, "المنطقة", _Location,1),
        textfiledstyle(Icons.description, "التفاصيل", _Detailes,3),
        textfiledstyle(Icons.description, "اسم المستخدم", _UserName,1),
        textfiledstyle(Icons.description, "كلمة السر", _Password,1),
        Column(
          children: [
            button()
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Login())),
                  child: Text("اضغط هنا")),
              Text("اذا كان لديك حساب مسبق "),

            ],
          ),
        )
      ],

    );
  }
  edite(){
    TB_User user= context.watch<Provider_User>().user;
    image=user.Picutre;
    _Name.text=user.FullName;
    _Number.text=user.Number.toString();
    _Location.text=user.Location;
    _Detailes.text=user.Detailes;
    _UserName.text=user.UserName;
    _Password.text=user.Password;

  }
  button(){
    if(context.watch<Provider_User>().user!=null)
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buttonstyle("تعديل",(){}, 160,22,Colors.white,Colors.blue.shade900,Icons.edit,1),
        buttonstyle("الغاء",(){}, 160,22,Colors.white,Colors.blue.shade900,Icons.cancel,1),

      ],
    );
    else {
      return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonstyle("تسجيل",(){}, 150,22,Colors.white,Colors.blue.shade900,Icons.send,1),
        ],
      );
    }
    }

  }

