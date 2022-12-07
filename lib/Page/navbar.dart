import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:shopping/Model/provider.dart';
import 'package:shopping/Page/Lists/all_items.dart';
import 'package:shopping/Page/profile.dart';
import 'package:provider/provider.dart';
import 'Alerts.dart';
import 'interface.dart';

class Navbar extends StatefulWidget {

  @override
  NavbarState createState() => NavbarState();
}

class NavbarState extends State<Navbar> {
  List<TB_Alerts>alerts=Alertsmodel;
  List<TB_Alerts>alertsligth;
  List<Widget> pages;
  Widget currentPage;
  InterFace _interface;
  All_Items _Itempage;
  Alerts _Alertspage;
  Profile _profile;
  var currentIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    _interface=InterFace();
    _Itempage=All_Items();

    _Alertspage=Alerts();
    _profile=Profile();
    pages=[_interface,_Itempage,_Alertspage,_profile,];
    currentPage=_interface;
  }
  @override
  Widget build(BuildContext context) {
    alertsligth=alerts.where((element) => element.IduserRecive==context.watch<Provider_User>().user.IdUser &&element.Reed==false).toList();
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 2,),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade900,
              blurRadius: 5,
            ),
          ],

          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: pages.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentPage = pages[index];
                HapticFeedback.lightImpact();
                currentIndex=index;
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? displayWidth * .32
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == index ? displayWidth * .12 : 0,
                      width: index == index ? displayWidth * .32 : 0,
                      decoration: BoxDecoration(
                        color: index == index
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? displayWidth * .31
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width:
                              index == currentIndex ? displayWidth * .13 : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == currentIndex ? 1 : 0,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == currentIndex
                                    ? '${listOfStrings[index]}'
                                    : '',
                                style: TextStyle(
                                  color:Colors.blue.shade900,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width:
                              index == currentIndex ? displayWidth * .03 : 20,
                            ),
                            listOfIcons[index]==Icons.add_alert? Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red,
                                  ),
                                  height: 20,
                                  width: 20,

                                  child: Text(alertsligth.length.toString(),textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(
                                    listOfIcons[index],
                                    size:20,
                                    color:Colors.blue.shade900
                                ),
                              ],
                            ):Icon(
                                listOfIcons[index],
                                size:20,
                                color:Colors.blue.shade900
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.widgets,
    Icons.add_alert,
    Icons.person,
  ];

  List<String> listOfStrings = [
    'الرئيسية',
    'المنتجات',
    'الاشعارات',
    'البروفايل'
  ];
}