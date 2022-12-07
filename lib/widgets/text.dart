import 'package:flutter/material.dart';
class textstyle extends StatefulWidget {
  String _text;
  double _size;
  Color _color;
  TextAlign _align;
  int _shad;
   textstyle(this._text,this._size,this._color,this._align,this._shad);

  @override
  _textstyleState createState() => _textstyleState();
}

class _textstyleState extends State<textstyle> {
  @override
  Widget build(BuildContext context) {
    return text(widget._text, widget._size, widget._color, widget._align, widget._shad);
  }
  text(String text,double size,Color color,TextAlign align,int shad){
    return Text(text,
      textAlign: align,
      style: TextStyle(
          shadows: [
            shad!=0?  BoxShadow(
              color: Colors.black,
              blurRadius: 1,
            ):null
          ],
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: color
      ),
    );
  }
}
