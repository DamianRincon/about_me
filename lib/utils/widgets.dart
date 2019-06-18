import 'package:flutter_web/material.dart';
import 'hex_color.dart';
import 'util.dart';

class Widgets{

  static modalBottomSheetMenu(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (builder){
        return Container(
          height: 300.0,
          color: HexColor("#24292e"),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0)
              )
            ),
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: Image.network("https://img.icons8.com/color/48/000000/whatsapp.png"),
                  title: Text('Whatsapp'),
                  subtitle: Text("+(52) 961-173-35-25"),
                  onTap: () => {}
                ),
                ListTile(
                  leading: Image.network("https://img.icons8.com/color/48/000000/facebook-new.png"),
                  title: Text('Facebook'),
                  subtitle: Text("@demianrincondrc"),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Image.network("https://img.icons8.com/color/48/000000/gmail.png"),
                  title: Text('Gmail'),
                  subtitle: Text("damianrincondrc@gmail.com"),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Image.network("https://img.icons8.com/color/48/000000/skype.png"),
                  title: Text('Skype'),
                  subtitle: Text("damianrincondrc_1"),
                  onTap: () => {},
                ),
              ],
            ),
          ),
        );
      }
    );
  }
/*
InkWell(
                      child: Image.network("https://img.icons8.com/color/48/000000/whatsapp.png"),
                      onTap: (){},
                    ),
                    InkWell(
                      child: Image.network("https://img.icons8.com/color/48/000000/facebook-new.png"),
                      onTap: (){},
                    ),
                    InkWell(
                      child: Image.network("https://img.icons8.com/color/48/000000/instagram-new.png"),
                      onTap: (){},
                    ),
                    InkWell(
                      child: Image.network("https://img.icons8.com/color/48/000000/gmail.png"),
                      onTap: (){},
                    )
 */


  static photo(BuildContext context){
    return Container(
      height: Util.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: Util.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
        : MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        color: Colors.white10,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage("https://damianrincon.github.io/resource/yo.jpeg"),
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),      
    );
  }


  static final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hola mi nombre es",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Damián\nRincón",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Un Ingeniero en Tecnologias de la Información apacionado\n"
        "por la programación web y movíl asi como en las tecnologias\n"
        "modernas y emergentes.",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Contactame!"),
            textColor: Colors.white,
            color: Colors.orange,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Resumen"),
            textColor: Colors.white,
            color: Colors.orange,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          )
        ],
      )
    ],
  );

  static Responsive(context) {
    if (Util.isLargeScreen(context)) {
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Column(children: <Widget>[
                photo(context),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                  ]
                )
              ]),
              profileData,
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.35),
          Text("Todos los derechos reservados",style: TextStyle(color: Colors.orange.shade300))
        ],
      );
    }else if(Util.isSmallScreen(context)){
      return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            photo(context),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            profileData,
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Text("Todos los derechos reservados",style: TextStyle(color: Colors.orange.shade300))
          ],
        ),
      );
    }
  }
}
