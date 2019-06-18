import 'package:flutter_web/material.dart';
import 'home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Damián Rincón Cañaveral',
      theme: ThemeData(        
        fontFamily: "Products",
      ),
      home: Home(),
    );
  }
}
