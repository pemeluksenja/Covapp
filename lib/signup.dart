import 'package:covapp/login.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraint) {
        if (constraint.maxWidth <=730){
          return SignUp();
        } else if (constraint.maxWidth<=900){
          return SignUpWeb(width: 2,);
        } else if (constraint.maxWidth<=1200){
          return SignUpWeb(width: 3,);
        } else{
          return SignUpWeb(width: 4,);
        }
      },
    );
  }
}

class SignUp extends StatelessWidget {
  TextEditingController emailController =  TextEditingController(text: "");
  TextEditingController passwordController =  TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff71EFA3),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Center(

                    child: Container(

                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "NotoSerif",

                        ),
                      ),
                    )
                ),
                Container(

                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.black26
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.yellow, width: 2.0)
                        ),
                      ),
                    ),
                  ),
                Container(

                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.black26
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.yellow, width: 2.0)
                      ),
                    ),
                  ),
                ),

                Material(
                  child: Container(

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
                          onTap: () async {
                            FirebaseUser firebaseUser = await Auth.signUp(emailController.text, passwordController.text);
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage(firebaseUser)));
                          },
                          child: Center(
                            child: Text("Sign Up", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16
                            ),
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(child: Text("Sudah punya akun?"),
                    ),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                    }, child: Center(
                      child: Text("Login", style: TextStyle(color: Colors.blue),),
                    ))
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}

class SignUpWeb extends StatelessWidget {
  TextEditingController emailController =  TextEditingController(text: "");
  TextEditingController passwordController =  TextEditingController(text: "");
  final double width;
  SignUpWeb({this.width});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff71EFA3),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width / width,
            child: Column(
              children: <Widget>[
                Center(

                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "NotoSerif",

                        ),
                      ),
                    )
                ),
                Expanded(
                  child: Container(

                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.black26
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.yellow, width: 2.0)
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container(
                  margin: EdgeInsets.symmetric(vertical: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.black26
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.yellow, width: 2.0)
                      ),
                    ),
                  ),
                ),
                ),
                Material(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
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
                          onTap: () async {
                            await Auth.signUp(emailController.text, passwordController.text);
                          },
                          child: Center(
                            child: Text("Sign Up", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16
                            ),
                            ),
                          )
                      ),
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}

