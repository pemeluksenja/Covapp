import 'package:covapp/fetchdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataCovid extends StatefulWidget {

  @override
  _DataCovidState createState() => _DataCovidState();
}

class _DataCovidState extends State<DataCovid> {

  Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
    print(data);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back, size: 30.0,)
        ),
        title: Text("Data Covid Indonesia",
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
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image(
                    image: AssetImage("images/map.png"),
                  ),
                ),
                Card(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children:<Widget> [
                              FaIcon(FontAwesomeIcons.virus, color: Colors.amber,),
                              FutureBuilder(
                                future: data,
                                builder: (context, AsyncSnapshot snapshot){
                                  if (snapshot.hasData){
                                    return Text("${snapshot.data[0]["positif"]}", style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20)
                                    );
                                  } else {
                                    return CircularProgressIndicator();
                                  }
                                },
                              ),
                              Text("Terinfeksi", style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),)
                            ],
                          ),
                          Column(
                            children:<Widget> [
                              FaIcon(FontAwesomeIcons.smile, color: Colors.green,),
                              FutureBuilder(
                                future: data,
                                builder: (context, AsyncSnapshot snapshot){
                                  if (snapshot.hasData){
                                    return Text("${snapshot.data[0]["sembuh"]}", style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20)
                                    );
                                  } else {
                                    return CircularProgressIndicator();
                                  }
                                },
                              ),
                              Text("Sembuh", style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.skullCrossbones, color: Colors.red,),
                              FutureBuilder(
                                future: data,
                                builder: (context, AsyncSnapshot snapshot){
                                  if (snapshot.hasData){
                                    return Text("${snapshot.data[0]["meninggal"]}", style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                    );
                                  } else {
                                    return CircularProgressIndicator();
                                  }
                                },
                              ),
                              Text("Meninggal", style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      )
    );
  }



  Future getData() async{
    Fetch fetchData = Fetch("https://api.kawalcorona.com/indonesia");
    return fetchData.fetchData();
  }
}
