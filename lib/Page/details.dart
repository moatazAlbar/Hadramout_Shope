import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/widgets/buttons.dart';
import 'package:shopping/widgets/text.dart';
import 'package:shopping/widgets/textfiled.dart';

class Details extends StatefulWidget {
  TB_Item _tb_item;

  Details(this._tb_item);

  @override
  _DetailsState createState() => _DetailsState();
}

TB_User _user;
List<TB_User> _users = Usersmodel;

class _DetailsState extends State<Details> {
  TextEditingController alerttext=new TextEditingController();
  bool showalert=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < _users.length; i++) {
      if (_users[i].IdUser == widget._tb_item.UserId) _user = _users[i];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black, spreadRadius: 1, blurRadius: 3)
                    ],
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(55),
                        bottomLeft: Radius.circular(55)),
                    image: DecorationImage(
                        image: AssetImage(widget._tb_item.Picutre),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 77),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(33)),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.blue.shade900,
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    ListTile(
                      title: textstyle("${widget._tb_item.FullName}", 25,
                          Colors.blue.shade900, TextAlign.start, 0),
                      subtitle: textstyle("${widget._tb_item.Price}\$", 22,
                          Colors.blue, TextAlign.start, 0),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: textstyle("${widget._tb_item.Detailes}", 18,
                          Colors.black45, TextAlign.start, 0),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white, boxShadow: [BoxShadow()]),
                      child: Column(
                        children: [
                          ListTile(
                            title: textstyle(
                                "${("Name: " + _user.FullName + "\n Location: " + _user.Location)}",
                                16,
                                Colors.blue,
                                TextAlign.start,
                                0),
                            subtitle: textstyle("${_user.Detailes}", 14,
                                Colors.blue, TextAlign.start, 0),
                            leading: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 1,
                                        blurRadius: 3)
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image: AssetImage(_user.Picutre),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Row(
                            children: [
                              buttonstyle(_user.Number.toString(),(){},120,13,Colors.white,Colors.grey,Icons.call,1),
                              buttonstyle(_user.Number.toString(),(){},120,13,Colors.white,Colors.grey,Icons.sms,1),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttonstyle("Like", () {}, 150, 18, Colors.white,
                            Colors.blue.shade900,Icons.thumb_up,1),
                        buttonstyle("Favefrot", () {}, 160, 18, Colors.white,
                            Colors.blue.shade900,Icons.favorite,1),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttonstyle("Chat", () {
                          setState(() {
                            showalert=!showalert;

                          });
                        }, 300, 24, Colors.white,
                            Colors.blue.shade900,Icons.text_snippet,1),
                      ],
                    )
                  ],
                ),
              ),
             showalert==true? Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   textfiledstyle(Icons.text_snippet, "اشعار الى "+_user.FullName, alerttext, 3),
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
      ),
    );
  }

  buttons(String Name, Function _functon, double size, Color _colortext,
      Color _colorback) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: size,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(44),
                color: _colorback,
                boxShadow: [
                  BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 3)
                ]),
            child: MaterialButton(
              onPressed: _functon,
              child: Text(
                "$Name",
                style: TextStyle(color: _colortext),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
