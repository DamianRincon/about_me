import 'package:flutter_web/material.dart';

class Btn extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;

  const Btn({Key key, this.text, this.onPressed, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    return InkWell(
      child: Container(
        height: 35,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: onPressed,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width:  10),
                  Text(text,style: TextStyle(color: color, wordSpacing: 1)),
                  SizedBox(width:  10)
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}