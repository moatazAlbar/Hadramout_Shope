import 'package:flutter/material.dart';

class textfiledstyle extends StatefulWidget {
  IconData _icon;
  String _hinttext;
  TextEditingController _controlle;
  int lines;
   textfiledstyle(this._icon,this._hinttext,this._controlle,this.lines);

  @override
  _textfiledstyleState createState() => _textfiledstyleState();
}

class _textfiledstyleState extends State<textfiledstyle> {
  bool _showpassword=false;
  @override
  Widget build(BuildContext context) {
    return textfiled(widget._icon,widget._hinttext,widget._controlle,widget.lines);
  }
  Widget textfiled(IconData _icon, String _hinttext,
      TextEditingController _controlle,int lines) {
    return Container(
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

      child: TextField(
        obscureText: _icon==Icons.admin_panel_settings?!_showpassword:false,
        textAlign: TextAlign.end,
        textCapitalization: TextCapitalization.words,
        maxLines: lines,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: _hinttext,
            suffixIcon: Icon(_icon),
            prefixIcon: _icon==Icons.admin_panel_settings?IconButton(
                icon: Icon(Icons.remove_red_eye,color: _showpassword?Colors.blue.shade900:Colors.grey,), onPressed: (){
              setState(() {
                _showpassword=!_showpassword;
              });
            }):Text("")
        ),
        controller: _controlle,
        onChanged:(val)=> {
          setState(() {

          })
        },

      ),
    );
  }
}
