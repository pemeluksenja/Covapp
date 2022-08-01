import 'package:covapp/daftarvaksin.dart';
import 'package:covapp/datacovid.dart';
import 'package:covapp/infors.dart';
import 'package:covapp/serbaserbi.dart';
import 'package:covapp/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'auth.dart';

// class HomePage extends StatelessWidget {
//   final FirebaseUser user;
//   HomePage(this.user);
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraint) {
//         if (constraint.maxWidth <=730){
//           return Home(user);
//         } else if (constraint.maxWidth<=900){
//           return Home(user);
//         } else if (constraint.maxWidth<=1000){
//           return Home(user);
//         }else if (constraint.maxWidth<=1200){
//           return HomeWeb(user);
//         } else{
//           return HomeWeb(user);
//         }
//       },
//     );
//   }
// }


class HomePage extends StatelessWidget {
  final FirebaseUser user;
  HomePage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.health_and_safety,
          size: 30.0,
        ),
        title: Text("Covapp",
        style: TextStyle(
          fontWeight: FontWeight.w700,
            fontSize: 25
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app,
            size: 30.0,
            ),
            onPressed: () async{
              await Auth.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
            },
          ),
        ],
        flexibleSpace: Container(
          color: Color(0xff71EFA3),
        ),
      ),
      body: Column(
        children:<Widget> [
          Container(
            height: MediaQuery.of(context).size.height/3,
            child: Column(
              children: [
               Container(
                 color: Color(0xff71EFA3),
                 padding: EdgeInsets.all(10),
                 child:  Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget>[
                     Icon(Icons.person, color: Colors.white,),
                     Text("Hi, ${user.email.split("@")[0]}!",
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                       fontWeight: FontWeight.w700
                      ),
                     ),
                   ],
                 ),
               ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SerbaSerbiPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                          color: Color(0xff71EFA3),
                              width: 2.0
                            ),
                            bottom: BorderSide(
                                color: Color(0xff71EFA3)
                            ),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Serba-serbi Covid-19",
                            style: TextStyle(
                                fontFamily: "NotoSans",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff50CB93)
                            ),
                          ),
                          Icon(Icons.coronavirus_sharp,
                            color: Color(0xff71EFA3),
                            size: 30.0,
                          )
                        ],
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>InfoRSPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Color(0xff71EFA3)
                            ),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Info Ketersediaan Rumah Sakit",
                            style: TextStyle(
                                fontFamily: "NotoSans",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff50CB93)
                            ),
                          ),
                          Icon(Icons.local_hospital,
                            color: Color(0xff71EFA3),
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DaftarVaksinPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Color(0xff71EFA3)
                            ),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Daftar Vaksin",
                            style: TextStyle(
                                fontFamily: "NotoSans",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff50CB93)
                            ),
                          ),
                          Icon(Icons.app_registration_rounded,
                            color: Color(0xff71EFA3),
                            size: 30.0,
                          )
                        ],
                      ),
                    ),
                  )
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DataCovid()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color(0xff71EFA3)
                              ),
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Data Covid 19 di Indonesia",
                              style: TextStyle(
                                  fontFamily: "NotoSans",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff50CB93)
                              ),
                            ),
                            Icon(Icons.info,
                              color: Color(0xff71EFA3),
                              size: 30.0,
                            )
                          ],
                        ),
                      ),
                    )
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>About()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color(0xff71EFA3),
                                width: 2.0
                              ),
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("About Developer",
                              style: TextStyle(
                                  fontFamily: "NotoSans",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff50CB93)
                              ),
                            ),
                            Icon(Icons.person,
                              color: Color(0xff71EFA3),
                              size: 30.0,
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeWeb extends StatelessWidget {
final FirebaseUser user;
HomeWeb(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.health_and_safety,
          size: 30.0,
        ),
        title: Text("Covapp",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app,
              size: 30.0,
            ),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
            },
          ),
        ],
        flexibleSpace: Container(
          color: Color(0xff71EFA3),
        ),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          _buildGestureDetector(context, "images/3625655.jpg", "Serba-serbi Covid-19", SerbaSerbiPage()),
            _buildGestureDetector(context, "images/10130.jpg", "Info Ketersediaan Rumah Sakit", InfoRSPage()),
            _buildGestureDetector(context, "images/5032303.jpg", "Daftar Vaksin", DaftarVaksinPage()),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildGestureDetector(BuildContext _context, String _image, String _text, Widget _route) {
    return GestureDetector(
          onTap: (){
            Navigator.push(_context, MaterialPageRoute(builder: (context)=> _route));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black26
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2)
                  )
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  child: Image(
                      image: AssetImage(_image),
                    ),
                  ),
                Container(
                  child: Text(_text,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }
}

