import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0x44000000),
      appBar: AppBar(
        title: Text("About Developer"),
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
         Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/pas foto.jpeg"),
                    fit: BoxFit.cover,
                  )
              ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Abdullah Azzam",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text("Contact",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    FaIcon(FontAwesomeIcons.twitter),
                                    Text(" "),
                                    Text("@pemeluksenja_")
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    FaIcon(FontAwesomeIcons.instagram),
                                    Text(" "),
                                    Text("@pemeluksenja")
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
