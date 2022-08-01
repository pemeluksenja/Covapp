import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SerbaSerbiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraint) {
        if (constraint.maxWidth <=730){
          return SerbaSerbi();
        } else{
          return SerbaSerbiWeb();
        }
      },
    );
  }
}

class SerbaSerbi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, size: 30.0,)
        ),
        title: Text("Serba-serbi Covid-19",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25
          ),
        ),
        flexibleSpace: Container(
          color: Color(0xff71EFA3),
        ),
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        child: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Text("Definisi",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight:  FontWeight.w700
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Expanded(
                          child: Image(
                            image: AssetImage(
                              "images/3625655.jpg",
                            ),
                          ),
                        ),
                      ),
                      Container(

                          child: Expanded(
                            child: Text(
                              "Virus Corona atau severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) adalah virus yang menyerang sistem pernapasan. Penyakit karena infeksi virus ini disebut COVID-19. ",

                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text("Penyakit COVID-19 dapat menyebabkan berbagai gangguan pada sistem pernapasan, mulai dari gangguan ringan, infeksi paru-paru yang berat, hingga kematian. Sumber: Alodokter.com",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            )
                        ),
                        Expanded(
                          child: Image(
                            image: AssetImage(
                                "images/3658058.jpg"
                            ),
                          ),
                        )
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text("Cara Penyebaran dan Gejala",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 12),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Expanded(
                          child: Image(
                            image: AssetImage(
                                "images/5876.jpg"
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Text(
                            "Virus Corona menyebar melalui udara, percikan air liur pengidap, menyentuh tangan atau wajah orang yang terinfeksi, lalu menyentuh mata, hidung, atau mulut setelah memegang barang yang terkena virus corona. Sumber: Halodoc.com",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 15
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Expanded(
                          child: Text(
                              "Gejala yang muncul akibat virus Corona yakni demam (suhu tubuh > 38 derajat), batuk kering, sesak napas, hilangnya kemampuan indera  perasa, anosmia, beberapa mengalami diare, sakit kepala, dan ruam di  kulit. Sumber: Alodokter.com",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 15
                              )
                          ),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Image(
                            image: AssetImage(
                                "images/3594049.jpg"
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      "Tindakan Pencegahan",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        child: Text("Berikut beberapa ilustrasi dari freepik yang menjelaskan tindakan pencegahan agar tidak terjangkit virus Corona",
                          style: TextStyle(
                              fontSize: 15
                          ),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage(
                              "images/5643000.jpg"
                          ),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage(
                              "images/5632438.jpg"
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
        ),
      ),
    );
  }
}

class SerbaSerbiWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, size: 30.0,)
        ),
        title: Text("Serba-serbi Covid-19",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25
          ),
        ),
        flexibleSpace: Container(
          color: Color(0xff71EFA3),
        ),
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Center(
                      child: Text("Definisi",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight:  FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          child: Expanded(
                            child: Image(
                              image: AssetImage(
                                "images/3625655.jpg",
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Expanded(
                              child: Text(
                                "Virus Corona atau severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) adalah virus yang menyerang sistem pernapasan. Penyakit karena infeksi virus ini disebut COVID-19. "
                                    "Penyakit COVID-19 dapat menyebabkan berbagai gangguan pada sistem pernapasan, mulai dari gangguan ringan, infeksi paru-paru yang berat, hingga kematian. Sumber: Alodokter.com",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text("Cara Penyebaran dan Gejala",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 12),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          child: Expanded(
                            child: Image(
                              image: AssetImage(
                                  "images/5876.jpg"
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Expanded(
                            child: Text(
                              "Virus Corona menyebar melalui udara, percikan air liur pengidap, menyentuh tangan atau wajah orang yang terinfeksi, lalu menyentuh mata, hidung, atau mulut setelah memegang barang yang terkena virus corona. Sumber: Halodoc.com\n"
                                  "Gejala yang muncul akibat virus Corona yakni demam (suhu tubuh > 38 derajat), batuk kering, sesak napas, hilangnya kemampuan indera  perasa, anosmia, beberapa mengalami diare, sakit kepala, dan ruam di  kulit. Sumber: Alodokter.com",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Tindakan Pencegahan",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                          padding: EdgeInsets.all(10),
                          child: Text("Berikut beberapa ilustrasi dari freepik yang menjelaskan tindakan pencegahan agar tidak terjangkit virus Corona",
                            style: TextStyle(
                                fontSize: 15
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 300,
                                height: 300,
                                child: Expanded(
                                  child: Image(
                                    image: AssetImage(
                                        "images/5643000.jpg"
                                    ),
                                  ),
                                )
                            ),
                            Container(
                                width: 300,
                                height: 300,
                                child: Expanded(
                                  child: Image(
                                    image: AssetImage(
                                        "images/5632438.jpg"
                                    ),
                                  ),
                                )
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

