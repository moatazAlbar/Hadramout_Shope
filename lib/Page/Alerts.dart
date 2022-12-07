import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Model/provider.dart';
import 'package:shopping/widgets/text.dart';
import 'package:shopping/widgets/buttons.dart';
import 'package:shopping/widgets/textfiled.dart';

class Alerts extends StatefulWidget {
   Alerts();

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  TextEditingController alerttext=new TextEditingController();
  bool showalert=false;
  List<TB_User>_users=Usersmodel;

  @override
  Widget build(BuildContext context) {
    TB_User _user=context.watch<Provider_User>().user;
    List<TB_Alerts>_alets=Alertsmodel.where((element) => element.IduserRecive==_user.IdUser||element.IduserSend==_user.IdUser).toList();
    return Scaffold(
      body: _alets.length!=0?SingleChildScrollView(
        child: Container(
          child: ListView.builder(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: _alets.length,
              itemBuilder: (BuildContext context,int index){
                return InkWell(
                  onTap: ()=>print(_alets[index].IduserSend),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:_alets[index].IduserSend==_user.IdUser? Colors.green:Colors.blue.shade900,
                          spreadRadius: 2,
                          blurRadius: 3
                        )
                      ]
                    ),
                    child: Column(
                      children: [
                        textstyle(_alets[index].dateTime.toString(),
                            12,Colors.blue.shade900,TextAlign.start,1),

                        ListTile(
                          title: textstyle("من "+retuser(_alets[index].IduserSend, 0)+
                              " الى "+retuser(_alets[index].IduserRecive, 0)
                              ,
                              18,Colors.blue.shade900,TextAlign.center,1),
                          subtitle: textstyle(_alets[index].Message,
                              16,Colors.blue,TextAlign.center,1),
                          leading: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 1,
                                      blurRadius:5
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage(_alets[index].IduserSend==_user.IdUser?retuser(_alets[index].IduserRecive,1):retuser(_alets[index].IduserSend,1)),
                                  fit: BoxFit.fill
                                )
                            ),
                          ),
                          trailing: _alets[index].Reed==false?Icon(Icons.check_circle_outline_rounded,):Icon(Icons.check_circle,color: Colors.green,),
                        ),
                        buttonstyle("رد",(){
                          setState(() {
                            showalert=!showalert;
                          });
                        },150,15,Colors.white,Colors.blue.shade900,Icons.edit,1),
                        showalert==true? Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              textfiledstyle(Icons.text_snippet, "اشعار الى "+retuser(_alets[index].IduserRecive,0), alerttext, 3),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  buttonstyle("send", () {}, 130, 14, Colors.white,
                                      Colors.blue.shade900,Icons.send,1),
                                ],
                              ),

                            ],
                          ),
                        ):Text("")
                      ],
                    ),
                  ),
                );
              }),
        )
      ):Center(child: Text("Nothig")),
    );
  }
  retuser(int id,int type){
    TB_User user= _users.where((element) => element.IdUser==id).first;
    return type==0? user.FullName:user.Picutre;
  }
}
