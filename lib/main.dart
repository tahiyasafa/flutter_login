import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/registration.dart';
import 'package:login/welcome.dart';
import 'helper.dart';
import 'package:flutter/material.dart';
import 'helper.dart';
import 'auth_helper.dart';

import 'home_pg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*void main() {


  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

        initialRoute: WelcomeScreen.id,
        routes:{
          WelcomeScreen.id:(context)=>WelcomeScreen(),
          LoginScreen.id:(context)=>LoginScreen(),
          RegistrationScreen.id:(context)=>RegistrationScreen(),



    );
  }
}}*/
void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(

        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(context, snapshot) {
          if(snapshot.hasData && snapshot.data != null){
            return HomePage();
          }
          return LoginScreen();
        }
    );




  }
}