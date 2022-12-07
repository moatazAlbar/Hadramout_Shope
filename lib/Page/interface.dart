import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/Model/Items_models.dart';
import 'package:shopping/Model/models.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Model/provider.dart';
import 'package:shopping/Page/Lists/Users.dart';
import 'package:shopping/Page/Lists/all_items.dart';
import 'package:shopping/Page/Lists/item_store.dart';
import 'package:shopping/Page/details.dart';
import 'package:shopping/widgets/text.dart';
import 'package:shopping/Page/profile.dart';
import 'package:shopping/widgets/grade.dart';
import 'Lists/Favfort.dart';
import 'Lists/Like.dart';
import 'Lists/UsersStore.dart';
import 'add/add_category.dart';
import 'add/add_item.dart';
import 'navbar.dart';


class InterFace extends StatefulWidget {

  InterFace();

  @override
  _InterFaceState createState() => _InterFaceState();
}


class _InterFaceState extends State<InterFace> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<TB_Item>_items=Itemsmodel;
  List<TB_User>_users=Usersmodel;
  List<TB_Likes>_likes=Likesmodel;
  List<TB_Faverote>_Faverot=faverot;
  List<TB_Category>_category=Categorymodel;
  TextEditingController _Search=new TextEditingController();
Color like=Colors.black;
Color fav=Colors.black;
  TB_User _user;

  Color a=Colors.white;
  Color b=Colors.white;
  Color c=Colors.white;
  Color d=Colors.white;
  Color e=Colors.white;
  Color f=Colors.white;
  Color g=Colors.white;
  Color h=Colors.white;
  Color i=Colors.white;

  List<TB_User>_Store=Usersmodel.where((element) => element.RoleId==2).toList();
  @override
  Widget build(BuildContext context) {
    _user=context.watch<Provider_User>().user;
    return WillPopScope(
      onWillPop:()async{
        AlertDialog(
          title: Text("خروج"),
        );
        return Navigator.push(context,
            MaterialPageRoute(builder: (context)=>Navbar()));
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        drawer: Drawer(

          child: Drawer(
            child: ListView(
              children: [
                DrawerHeader(

                  child: Container(
                      child:Column(
                        children: [
                          Container(
                            height: 90,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              image: DecorationImage(
                                  image:AssetImage(_user.Picutre),
                                  fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(80.0),
                              boxShadow: [
                                BoxShadow( // this is shadow black around image
                                  blurRadius: 5.0,
                                  color: Colors.black,

                                ),
                              ],
                            ),
                          ),
                          textstyle(_user.FullName,
                              17,Colors.blue.shade900,TextAlign.center,1),
                          textstyle(_user.Location,
                              13,Colors.black45,TextAlign.center,0),

                        ],
                      ),

                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: f,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person,color: f==Colors.white?Colors.blue.shade900:Colors.white,),
                    title: Text("الملف الشخصي",style: TextStyle(color: f==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.white;
                        b=Colors.white;
                        c=Colors.white;
                        d=Colors.white;
                        e=Colors.white;
                        f=Colors.blue.shade900;
                        g=Colors.white;
                        h=Colors.white;
                        i=Colors.white;
                      });
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: a,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.home,color: a==Colors.white?Colors.blue.shade900:Colors.white,),
                    title: Text("الصفحة الرئيسية",style: TextStyle(color: a==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.blue.shade900;
                        b=Colors.white;
                        c=Colors.white;
                        d=Colors.white;
                        e=Colors.white;
                        f=Colors.white;
                        g=Colors.white;
                        h=Colors.white;
                        i=Colors.white;
                      });

                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: b,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.store,color: b==Colors.white?Colors.blue.shade900:Colors.white,),
                    title: Text("جميع المتاجر",style: TextStyle(color: b==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.white;
                        b=Colors.blue.shade900;
                        c=Colors.white;
                        d=Colors.white;
                        e=Colors.white;
                        f=Colors.white;
                        g=Colors.white;
                        h=Colors.white;
                        i=Colors.white;
                      });

                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: c,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.business_center,color: c==Colors.white?Colors.blue.shade900:Colors.white),
                    title: Text("جميع المنتجات",style: TextStyle(color: c==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.white;
                        b=Colors.white;
                        c=Colors.blue.shade900;
                        d=Colors.white;
                        e=Colors.white;
                        f=Colors.white;
                        g=Colors.white;
                        h=Colors.white;
                        i=Colors.white;
                      });

                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: h,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person_pin,color: h==Colors.white?Colors.blue.shade900:Colors.white,),
                    title: Text("منتجاتي",style: TextStyle(color: h==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.white;
                        b=Colors.white;
                        c=Colors.white;
                        d=Colors.white;
                        e=Colors.white;
                        f=Colors.white;
                        g=Colors.white;
                        h=Colors.blue.shade900;
                        i=Colors.white;
                      });

                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: d,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.business,color: d==Colors.white?Colors.blue.shade900:Colors.white,),
                    title: Text("الاعلانات",style: TextStyle(color: d==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.white;
                        b=Colors.white;
                        c=Colors.white;
                        d=Colors.blue.shade900;
                        e=Colors.white;
                        f=Colors.white;
                        g=Colors.white;
                        h=Colors.white;
                        i=Colors.white;
                      });
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: e,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.favorite,color: e==Colors.white?Colors.blue.shade900:Colors.white,),
                    title: Text("المفضلة",style: TextStyle(color: e==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.white;
                        b=Colors.white;
                        c=Colors.white;
                        d=Colors.white;
                        e=Colors.blue.shade900;
                        f=Colors.white;
                        g=Colors.white;
                        h=Colors.white;
                        i=Colors.white;
                      });
                    },
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: g,
                      borderRadius: BorderRadius.circular(90)
                  ),
                ),

                _user.RoleId==1?
                Container(
                  decoration: BoxDecoration(
                      color: i,
                      borderRadius: BorderRadius.circular(90)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person_outlined,color: i==Colors.white?Colors.blue.shade900:Colors.white,),
                    title: Text("ادرة الحسابات",style: TextStyle(color: i==Colors.white?Colors.blue.shade900:Colors.white),),
                    onTap: (){
                      setState(() {
                        a=Colors.white;
                        b=Colors.white;
                        c=Colors.white;
                        d=Colors.white;
                        e=Colors.white;
                        f=Colors.white;
                        g=Colors.white;
                        h=Colors.white;
                        i=Colors.blue.shade900;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Users()));
                      });

                    },
                  ),
                ):Text(""),


              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed:(){
            //print(role(1));
            role(3)==1?Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Add_Items(
                    TB_Item(null,null,null,null,null,null,null))))
                :Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Faverote()));
          } ,
          label: role(1),
          icon: role(0),
        ),
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.blue.shade900
          ),
          title: Text("اهلا بك  ${context.watch<Provider_User>().user.FullName}"
              ,style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 15
            ),
          ),
          shadowColor: Colors.blue.shade900,
          backgroundColor: Colors.white,

          actions: [
            IconButton(icon: Icon(Icons.favorite), onPressed:
                ()=>Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Likes())),
              color: Colors.red,),
            IconButton(icon: Icon(Icons.thumb_up), onPressed:
                ()=>Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>Faverote()))

              ,),
          ],
        ),
        body: Container(
          child: ListView(
            children: [

                 // IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: (){}),
                  textfiled(Icons.search, "ابحث هنا", _Search),
              //Itemes(context),
              Container(
                margin: EdgeInsets.all(6),
                child: Text("افضل المبيعات",textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.blue.shade900
                ),
                ),
              ),
              bestbay(context),
              Container(
                margin: EdgeInsets.all(6),
                child: TextButton(
                  onPressed: ()=>Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Users_Stores())),
                  child: Column(
                    children: [
                      textstyle("المتاجر",22,
                          Colors.blue.shade900,TextAlign.center,0),
                      textstyle("اضغط هنا لمشاخدة الجميع",15,
                          Colors.black45,TextAlign.center,0),
                    ],
                  ),
                )
              ),
              Stores(context),
              Container(
                margin: EdgeInsets.all(6),
                child: Text("العناصر",textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue.shade900
                  ),
                ),
              ),
              Categorbuild(context)
              //items(context)

            ],
          ),
        )
      ),
    );
  }
  Itemes(BuildContext context){
    return Container(
      height: 70,
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 12,
          itemBuilder: (BuildContext context,int index){
            return  Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                          color: Colors.deepOrange,
                          spreadRadius: 1,
                          blurRadius: 1
                      )
                    ],
                    borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.all(10),

                child: text("indexxxxxxx"+index.toString(),16,Colors.deepOrange,TextAlign.center),

            );
          }),
    );
  }
  bestbay(BuildContext context){
    return Container(
        height: 350,
        child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context,int index){
              return  InkWell(
                onTap: ()=>Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>Details(_items[index]))),
                child: Container(
                  width: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade900,
                          spreadRadius: 1,
                          blurRadius: 6
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all( 10),
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow:[
                            BoxShadow(
                                color: Colors.black54,
                                spreadRadius: 1,
                                blurRadius: 3
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(_items[index].Picutre),
                              fit: BoxFit.fill
                          ),

                        ) ,
                      ),
                      ListTile(
                        title: text(_items[index].FullName,20,Colors.black,TextAlign.start),
                        subtitle: text(_items[index].Detailes,16,Colors.black54,TextAlign.start),
                        trailing:text("Price\n ${_items[index].Price}",16,Colors.black54,TextAlign.start),
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
                                    color: Colors.blue.shade700,
                                    spreadRadius: 1,
                                    blurRadius: 2
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(PicureStore(_items[index].UserId)),
                                  fit: BoxFit.fill
                              ),

                            ) ,
                          ),
                          IconButton(
                            icon: Likecategory(_items[index].IdCategory),
                            onPressed: (){
                              setState(() {
                                print(_items[index].IdCategory);
                                like==Colors.black?like=Colors.red:like=Colors.black;
                              });
                            },
                          ),
                          IconButton(
                            icon: Faverotcategory(_items[index].IdCategory),
                            onPressed: (){
                              setState(() {
                                fav==Colors.black?fav=Colors.red:fav=Colors.black;
                              });

                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      
    );
  }
  Upstar(){
    return  Container(
        decoration: BoxDecoration(
            color:a,
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(50),
              bottomRight:Radius.circular(50),
            )
        ),
        height: 160,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10,left: 10),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage("images/img.jpg"),
                      fit: BoxFit.cover
                  )

              ) ,),
            Container(
              margin: EdgeInsets.only(left: 10,bottom: 30),
              child: text("Welcom"
                  ,22,Colors.white,TextAlign.center
              ),
            )
          ],
        )
    );
  }
Stores(BuildContext context){
    return  Container(
      margin: EdgeInsets.all(10),
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 5,
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
                margin: EdgeInsets.only(top: 15),

                child: ListTile(
                  title: text(_Store[index].FullName,20,Colors.black,TextAlign.start),
                  subtitle: text(_Store[index].Location,16,Colors.black54,TextAlign.start),
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
    );
}
Widget text(String text,double size,Color color,TextAlign align){
    return Text(text,
      textAlign: align,
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: color
      ),
    );
}
Widget textfiled(IconData _icon, String _hinttext,
    TextEditingController _controlle) {
  return Container(
    margin: EdgeInsets.all( 20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Colors.white60),
        boxShadow: [
          BoxShadow(
              color:Colors.blue.shade900,
              blurRadius: 3

          )
        ]
    ),

    child: TextField(
      textAlign: TextAlign.end,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hinttext,
          suffixIcon: Icon(_icon)
      ),
      controller: _controlle,
      onChanged:(val)=> {
        setState(() {

        })
      },
    ),
  );
}
PicureStore(int id){
    String path;
    for(int i=0;i<_users.length;i++){
      id==_users[i].IdUser?path=_users[i].Picutre:"";
    }
    return path;
}
Likecategory(int id){
    var s;
    for(int i=0;i<_likes.length;i++){
      if(id==_likes[i].CategoryId&&_user.IdUser==_likes[i].UsersId){
      return s=Icon( Icons.thumb_up,color: Colors.red,);
      }
       else{
      s=Icon( Icons.thumb_up_alt_outlined,color: Colors.black,);
      }
    }
    return s;
}
Faverotcategory(int id){
    var s;
    for(int i=0;i<_Faverot.length;i++){
      if(id==_Faverot[i].CategoryId&&_user.IdUser==_Faverot[i].UsersId){
        return s=Icon( Icons.favorite,color: Colors.red,);
      }
      else{
        s=Icon( Icons.favorite_border,color: Colors.black,);
      }
    }
    return s;
  }
  role(int s){
   return s==0? _user.RoleId==3?Icon(Icons.favorite):Icon(Icons.add_circle):s==1?
   _user.RoleId==3?Text("المفضلة"):  Text("اضافة"):_user.RoleId==3?0:1;
  }
  void _handleDrawerButton() {
    Scaffold.of(context).openDrawer();
  }
  items(BuildContext context){
    return Container(
      height: 500,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: List.generate(_category.length, (index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),bottomRight:  Radius.circular(22)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.shade900,
                      blurRadius: 2,
                      spreadRadius: 1
                  )
                ]
            ),
            margin: EdgeInsets.all(10),
            height: 270,
            child: Column(
              children: [
                Container(
                    height: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(

                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage(_category[index].Picure),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),bottomRight:  Radius.circular(22)),
                    )
                ),
                textstyle("${_category[index].Name}",20,Colors.blue,TextAlign.center,1)

              ],
            ),
          );
        }),
      ),);
  }
}
