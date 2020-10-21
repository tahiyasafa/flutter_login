import 'package:flutter/material.dart';
import 'package:login/welcome.dart';
import 'helper.dart';
import 'auth_helper.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
        body: Container(
        //backgroundColor: Colors.red,

        decoration: BoxDecoration(
        image: DecorationImage(

        image: AssetImage("image/bg2.png"),
    fit: BoxFit.cover,
    ),
    ),

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Image.asset("image/splash_screen.png"),

            RoundedButton(
              title: "Log Out",
              colour: Colors.red,

              onPressed: () {
                AuthHelper.logout();
              },
            ),
            //Image.asset("image/select_bar.png"),
          ],
        ),
      ),
        ),
    );
  }
}