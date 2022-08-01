import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InfoRSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraint) {
        if (constraint.maxWidth <=730){
          return InfoRS();
        } else{
          return InfoRSWeb();
        }
      },
    );
  }
}

class InfoRS extends StatefulWidget {
  @override
  _InfoRSState createState() => _InfoRSState();
}

class _InfoRSState extends State<InfoRS> {
  var isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, size: 30.0,)
        ),
        title: Text("Informasi Rumah Sakit",
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
                    margin: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        "Informasi Ketersediaan Rumah Sakit \n untuk Pasien Covid-19",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                  Container(
                      color: Color(0xff71EFA3),
                      margin: EdgeInsets.fromLTRB(5, 25, 5, 5),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Jakarta",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ],
                      )
                  ),
                  buildContainer("RS Umum Yadika", "Jl. Pahlawan Revolusi \nNo. 47, Pondok Bambu, Jaktim", 3, 0218615754),
                  buildContainer("RS Umum FK UKI", "Jl. May.Jen Soetoyo, Cawang, Jaktim", 24, 0218092317),
                  buildContainer("RS Umum Islam Jakarta Utara", "Jl. Tipar Cakung No. 5, \nJakut", 12, 0214400779 ),
                  Container(
                      color: Color(0xff71EFA3),
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Bogor",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ],
                      )
                  ),
                  buildContainer("RS Umum Daerah Ciawi", "Jl. Raya Puncak 479, \nCiawi, Bogor", 4, 082119041792),
                  buildContainer("RS Umum Daerah Cileungsi", "Jl. Raya Cileungsi-Jonggol \nKm.10 Cileungsi Kab. Bogor", 1, 02189934668),
                  buildContainer("Bogor Senior Hospital", "Jl. Raya Tajur No. 168 Muarasari Bogor", 4, 02517556777),
                  Container(
                      color: Color(0xff71EFA3),
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Depok",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ],
                      )
                  ),
                  buildContainer("RS Umum Puri Cinere", "Jl. Maribaya No.1 \nPuri Cinere, Depok", 1, 081905555488),
                  buildContainer("RS Umum Harapan Depok", "Jl. Pemuda No.10 Depok", 6, 08121132567),
                  buildContainer("RS Umum Bhakti Yudha", "Jl. Raya Sawangan No. 2A Depok", 3, 087889239146),
                  Container(
                      color: Color(0xff71EFA3),
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Tangerang",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ],
                      )
                  ),
                  buildContainer("RS Umum Daerah Balaraja", "Jl. Rumah Sakit NO. 88 \nDesa Tobat Kec. Balaraja", 1, 082213620551),
                  buildContainer("RS Ibu dan Anak Selaras", "Jl. Raya Serang KM.18,5 \nDesa Bojong, Kec.Cikupa\n Kab.Tangerang", 1, 02159401277),
                  buildContainer("RS Umum Murni Asih", "Jl. Raya Bojongnangka \nNo.86 Medang, Kec. Pagedangan, \nTangerang", 2, 081219089112),
                  Container(
                      color: Color(0xff71EFA3),
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Bekasi",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ],
                      )
                  ),
                  buildContainer("RS Helsa", "Jl. Raya Hankam No. 17 \nPondok Melati Kota Bekasi", 2, 081247522294),
                  buildContainer("RS Umum Hermina Bekasi", "Jl. Kemakmuran \nNo.39 Margajaya Bekasi", 3,  0218842121 ),
                  buildContainer("RS Umum Permata Cibubur", "Jl. Alternatif Cibubur - Cileungsi \nNo. 6A, Kec. Jati Sampurna, \nBekasi", 1, 08111115072),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Container buildContainer(String namaRS, String alamatRS, int slot,  int noTelp) {
    return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black26,
                  width: 1.0
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        Text(namaRS +"\n"),
                        Text(alamatRS)
                      ],
                    ),
                ),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget>[
                          Text("IGD Khusus Covid-19"),
                          Text( slot.toString() + " Bed Kosong\n"),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.phone, size: 15.0,),
                                Text("0"+ noTelp.toString())
                              ],
                            ),
                          ),
                        ]
                    ),
                ),
                Expanded(
                    child: IconButton(
                      icon: Icon(
                        isBookmarked ? Icons.bookmark : Icons.bookmark_add_outlined,
                        color: Colors.amber,
                      ),
                      onPressed: (){
                        setState(() {
                          isBookmarked = !isBookmarked;
                        });
                      },
                    )
                )
              ],
          )
    );
  }
}

class InfoRSWeb extends StatefulWidget {
  @override
  _InfoRSWebState createState() => _InfoRSWebState();
}

class _InfoRSWebState extends State<InfoRSWeb> {
  var isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: Icon(Icons.arrow_back, size: 30.0,)
          ),
          title: Text("Info Ketersediaan Rumah Sakit",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
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
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          "Informasi Ketersediaan Rumah Sakit \n untuk Pasien Covid-19",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                    Container(
                        color: Color(0xff71EFA3),
                        margin: EdgeInsets.fromLTRB(5, 25, 5, 5),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Jakarta",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ],
                        )
                    ),
                    buildContainer("RS Umum Yadika", "Jl. Pahlawan Revolusi \nNo. 47, Pondok Bambu, Jaktim", 3, 0218615754),
                    buildContainer("RS Umum FK UKI", "Jl. May.Jen Soetoyo, Cawang, Jaktim", 24, 0218092317),
                    buildContainer("RS Umum Islam Jakarta Utara", "Jl. Tipar Cakung No. 5, \nJakut", 12, 0214400779 ),
                    Container(
                        color: Color(0xff71EFA3),
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Bogor",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ],
                        )
                    ),
                    buildContainer("RS Umum Daerah Ciawi", "Jl. Raya Puncak 479, \nCiawi, Bogor", 4, 082119041792),
                    buildContainer("RS Umum Daerah Cileungsi", "Jl. Raya Cileungsi-Jonggol \nKm.10 Cileungsi Kab. Bogor", 1, 02189934668),
                    buildContainer("Bogor Senior Hospital", "Jl. Raya Tajur No. 168 Muarasari Bogor", 4, 02517556777),
                    Container(
                        color: Color(0xff71EFA3),
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Depok",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ],
                        )
                    ),
                    buildContainer("RS Umum Puri Cinere", "Jl. Maribaya No.1 \nPuri Cinere, Depok", 1, 081905555488),
                    buildContainer("RS Umum Harapan Depok", "Jl. Pemuda No.10 Depok", 6, 08121132567),
                    buildContainer("RS Umum Bhakti Yudha", "Jl. Raya Sawangan No. 2A Depok", 3, 087889239146),
                    Container(
                        color: Color(0xff71EFA3),
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Tangerang",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ],
                        )
                    ),
                    buildContainer("RS Umum Daerah Balaraja", "Jl. Rumah Sakit NO. 88 \nDesa Tobat Kec. Balaraja", 1, 082213620551),
                    buildContainer("RS Ibu dan Anak Selaras", "Jl. Raya Serang KM.18,5 Desa Bojong, Kec.Cikupa Kab.Tangerang", 1, 02159401277),
                    buildContainer("RS Umum Murni Asih", "Jl. Raya Bojongnangka \nNo.86 Medang, Kec. Pagedangan, Tangerang", 2, 081219089112),
                    Container(
                        color: Color(0xff71EFA3),
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Bekasi",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ],
                        )
                    ),
                    buildContainer("RS Helsa", "Jl. Raya Hankam No. 17 Pondok Melati Kota Bekasi", 2, 081247522294),
                    buildContainer("RS Umum Hermina Bekasi", "Jl. Kemakmuran No.39 Margajaya Bekasi", 3,  0218842121 ),
                    buildContainer("RS Umum Permata Cibubur", "Jl. Alternatif Cibubur - Cileungsi No. 6A, Kec. Jati Sampurna, Bekasi", 1, 08111115072),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
  Container buildContainer(String namaRS, String alamatRS, int slot,  int noTelp) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.black26,
                  width: 1.0
              )
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Text(namaRS +"\n"),
                  Text(alamatRS)
                ],
              ),
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  Text("IGD Khusus Covid-19"),
                  Text( slot.toString() + " Bed Kosong\n"),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.phone,
                          size: 15.0,),
                        Text("0"+ noTelp.toString())
                      ],
                    ),
                  )
                ],
              ),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 50),
                  child: IconButton(
                    icon: Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_add_outlined,
                      color: Colors.amber,
                    ),
                    onPressed: (){
                      setState(() {
                        isBookmarked = !isBookmarked;
                      });
                    },
                  )
              )
          )
        ],
      ),
    );
  }
}

