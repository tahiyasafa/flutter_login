import 'package:flutter/material.dart';
import 'package:login/welcome.dart';
import 'helper.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: Container(
        //backgroundColor: Colors.red,

        decoration: BoxDecoration(
          image: DecorationImage(

            image: AssetImage("image/bg2.png"),
            fit: BoxFit.fill,
        ),
      ),
      child :  Padding(

        padding: EdgeInsets.symmetric(horizontal: 24.0),

        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(   //Use of SizedBox
                height: 70,
              ),
              Container(
                height: 200,
                child: Image.asset("image/logo.png"),
              ),
              SizedBox(   //Use of SizedBox
                height: 90,
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value){

                },
                  style: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Segoe UI'),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                  hintText: "Enter your user name",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Segoe UI'),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal:20.0),
                  border:OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    borderSide: BorderSide(color: Colors.white.withOpacity(0.0),width: 1.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      borderSide: BorderSide(color: Colors.redAccent,width: 1.0)
                  )
                ),

              ),

              SizedBox(   //Use of SizedBox
                height: 20,
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value){

                },
                style: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Segoe UI'),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Segoe UI'),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal:20.0),
                    border:OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      // borderSide: BorderSide(color: Colors.red,width: 1.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide: BorderSide(color: Colors.redAccent,width: 1.0)
                    )
                ),

              ),
              SizedBox(   //Use of SizedBox
                height: 20,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value){

                },
                style: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Segoe UI'),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.white,fontFamily: 'Segoe UI'),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal:20.0),
                    border:OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      // borderSide: BorderSide(color: Colors.red,width: 1.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide: BorderSide(color: Colors.redAccent,width: 1.0)
                    )
                ),

              ),
              SizedBox(height: 20.0,),
              RoundedButton(
                title: "Register",
                colour: Colors.red,
                onPressed: (){

                },
              ),
              RoundedButton(
                title: "Back",
                //colour: Color(0xFF303B90),
                colour: Colors.red,
                onPressed: (){
                  Navigator.popAndPushNamed(context, WelcomeScreen.id);
                },
              ),
              SizedBox(height: 180.0,),
            ],

          ),
       ),
      ),
      ),

    );
  }
}
