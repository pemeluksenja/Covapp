import 'package:flutter/material.dart';


class DaftarVaksinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      if (constraint.maxWidth <=900){
        return DaftarVaksin();
      } else {
        return DaftarVaksinWeb();
      }
    },
    );
  }
}


class DaftarVaksin extends StatefulWidget {
  @override
  _DaftarVaksinState createState() => _DaftarVaksinState();
}

class _DaftarVaksinState extends State<DaftarVaksin> {
  var checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff71EFA3),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, size: 30.0, color: Color(0xff71EFA3), )
        ),
        title: Text("Daftar Vaksinasi",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Color(0xff71EFA3)
          ),
        ),
        flexibleSpace: Container(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height/1.6,
                width: MediaQuery.of(context).size.width/1.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.white
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text("Daftar Vaksin",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nama Lengkap",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "NIK",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nomor Telepon",
                        ),
                      ),
                    ),
                    Expanded(
                      child:  CheckboxListTile(
                        title: Text("Sinovac"),
                        value: checkedValue,
                        onChanged: (c) {
                          setState(() {
                            checkedValue = c;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: Text("AstraZeneca"),
                        value: checkedValue,
                        onChanged: (c) {
                          setState(() {
                            c = checkedValue;
                          });
                        },
                      ),
                    ),
                    Material(
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.yellow,
                                  Colors.amber
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                                splashColor: Colors.yellow,
                                onTap: (){
                                  final snackBar = SnackBar(
                                    content: Text("Registrasi Berhasil!"),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                                child: Center(
                                  child: Text("Daftar", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16
                                  ),
                                  ),
                                )
                            ),
                          ),
                        )
                    ),
                  ],
                )

            ),
          ),
        ],
      )
    );
  }
}

class DaftarVaksinWeb extends StatefulWidget {
  @override
  _DaftarVaksinWebState createState() => _DaftarVaksinWebState();
}

class _DaftarVaksinWebState extends State<DaftarVaksinWeb> {
  var checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff71EFA3),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, size: 30.0, color: Color(0xff71EFA3), )
        ),
        title: Text("Daftar Vaksinasi",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            color: Color(0xff71EFA3)
          ),
        ),
        flexibleSpace: Container(
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height/1.6,
                width: MediaQuery.of(context).size.width/4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.white
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text("Daftar Vaksin",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nama Lengkap",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "NIK",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nomor Telepon",
                        ),
                      ),
                    ),
                    Expanded(
                      child:  CheckboxListTile(
                        title: Text("Sinovac"),
                        value: checkedValue,
                        onChanged: (c) {
                          setState(() {
                            checkedValue = c;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: Text("AstraZeneca"),
                        value: checkedValue,
                        onChanged: (c) {
                          setState(() {
                            c = checkedValue;
                          });
                        },
                      ),
                    ),
                    Material(
                        child: Container(
                          margin: EdgeInsets.only(top: 40),
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.yellow,
                                  Colors.amber
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                                splashColor: Colors.yellow,
                                onTap: (){},
                                child: Center(
                                  child: Text("Daftar", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16
                                  ),
                                  ),
                                )
                            ),
                          ),
                        )
                    ),
                  ],
                )

            ),
          ),
        ],
      )
    );;
  }
}

