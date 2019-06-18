import 'package:flutter_web/material.dart';
import 'utils/hex_color.dart';
import 'utils/util.dart';
import 'utils/btn.dart';
import 'utils/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int press = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: HexColor("#24292e"),
      drawer: Util.isLargeScreen(context) ? null : Drawer(
        elevation: 5,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Damián Rincón Cañaveral"),
              accountEmail: Text("damianrincondrc@gmail.com"),
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrange,Colors.orange])),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage("https://damianrincon.github.io/resource/yo.jpeg"),
                backgroundColor: Colors.transparent,
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: Util.isLargeScreen(context) ? null : IconButton(
          icon: Icon(Icons.subject, color: Colors.orange),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        backgroundColor: HexColor("#24292e"),
        actions: Util.isLargeScreen(context) ? <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Btn(text: "Inicio",color:press==0 ? Colors.orange : Colors.white, onPressed: (){
                setState(() {
                  press = 0;
                });
              }),
              SizedBox(width:  10),
              Btn(text: "Redes Sociales",color: Colors.white,onPressed: (){
                Widgets.modalBottomSheetMenu(context);
              }),
              SizedBox(width:  10),
              Btn(text: "Descargar CV",color: Colors.white,onPressed: (){}),
              SizedBox(width:  10),
              Btn(text: "Aplicaciones",color: press==9 ? Colors.orange : Colors.white,onPressed: (){
                setState(() {
                  press = 9;
                });
              }),
            ],
          )
        ] : null,
      ),      
      body: SingleChildScrollView(child: Widgets.Responsive(context)),
    );
  }
}