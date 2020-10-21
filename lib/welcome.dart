import 'package:flutter/material.dart';
import 'helper.dart';
import 'registration.dart';
import 'login.dart';

class WelcomeScreen extends StatefulWidget {

  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row
              (
              children: [
                Container(
                  height: 100.0,
                  child: Image.asset('image/logo.png'),
                ),
                Text('Shieldo',style:TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 32.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
                ),
                Text('Robocop',style:TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 32.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.red),
                )
              ],

            ),
            SizedBox(height: 390.0,),
            RoundedButton(
              title: "Register",
              colour: Colors.red,
              onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
            RoundedButton(
              title: "Login",
              colour: Colors.red,
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
          ],
        ),
      ),
    ),
    );
  }
}



