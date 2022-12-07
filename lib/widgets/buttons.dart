import 'package:flutter/material.dart';

class buttonstyle extends StatefulWidget {
  String text;
  Function function;
  double sizebutton;
  double sizetext;
  Color  colortext;
  Color  colorbutton;
  IconData icon;
  int iconshow;


  buttonstyle(this.text,this.function,this.sizebutton,this.sizetext,this.colortext,this.colorbutton,this.icon,this.iconshow);

  @override
  _buttonstyleState createState() => _buttonstyleState();
}

class _buttonstyleState extends State<buttonstyle> {
  @override
  Widget build(BuildContext context) {
    return containerbutton(widget.text,widget.function,widget.sizebutton,widget.sizetext,widget.colortext,widget.colorbutton,widget.icon,widget.iconshow);
  }

  containerbutton(String Name, Function _functon,double sizebutton,double sizetext,Color _colortext,Color _colorback,IconData icon,int iconshow ){
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [

          InkWell(
            onTap: (){_functon();},
            child: Container(
              width: sizebutton,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(44),
                  color: _colorback,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 3
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconshow==0?Text(""):Icon(icon,color: _colortext,),
                  MaterialButton(
                    onPressed: _functon,
                    child: Text("$Name",style: TextStyle(
                        color: _colortext,
                      fontSize: sizetext
                    ),),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
