import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/widgets/buttons.dart';
import 'package:shopping/widgets/text.dart';
import 'package:shopping/widgets/textfiled.dart';

class Edite_DeleteUser extends StatefulWidget {
  TB_User _user;
   Edite_DeleteUser(this._user);

  @override
  _Edite_DeleteUserState createState() => _Edite_DeleteUserState();
}

class _Edite_DeleteUserState extends State<Edite_DeleteUser> {

  String _btn2SelectedVal;
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  static  List<String> menuItem=<String>[];
  List<TB_Role>_roles=Roles;

  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0;i<_roles.length;i++){
      if(!menuItem.contains(_roles[i].RoleName))
        menuItem.add(_roles[i].RoleName);
    }
    _dropDownMenuItems=menuItem
        .map(
          (String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      ),
    )
        .toList();
  }

  TextEditingController _Name=new TextEditingController();
  TextEditingController _Number=new TextEditingController();
  TextEditingController _Location=new TextEditingController();
  TextEditingController _Detailes=new TextEditingController();
  TextEditingController _UserName=new TextEditingController();
  TextEditingController _Password=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    String Itemselct=_roles.where((element) => element.IdRole==widget._user.RoleId).first.RoleName;
    _Name.text=widget._user.FullName;
    _Number.text=widget._user.Number.toString();
    _Location.text=widget._user.Location;
    _Detailes.text=widget._user.Detailes;
    _UserName.text=widget._user.UserName;
    _Password.text=widget._user.Password;
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          child: Column(
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
                              image:AssetImage("images/person3.png"),
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
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white60),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade900,
                        blurRadius: 3

                    )
                  ]
              ),
              child: ListTile(
                trailing: Text(': نوع المستخدم '),
                title: Container(
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
              ),
            ),
              textfiledstyle(Icons.location_on_sharp, "المنطقة", _Location,1),
              textfiledstyle(Icons.description, "التفاصيل", _Detailes,3),
              textfiledstyle(Icons.description, "اسم المستخدم", _UserName,1),
              textfiledstyle(Icons.description, "كلمة السر", _Password,1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonstyle("تحديث", (){}, 110, 22, Colors.white, Colors.blue.shade900, Icons.edit, 0),
                  buttonstyle("حذف", (){}, 110, 22, Colors.white, Colors.blue.shade900, Icons.edit, 0),
                  buttonstyle("الغاء", (){}, 110, 22, Colors.white, Colors.blue.shade900, Icons.edit, 0)

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
