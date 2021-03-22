import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/home_page.dart';
import 'package:restaurant_app/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Welcome", style: poppinsBlack,),
              SizedBox(
                height: 33,
              ),
              Image.asset("assets/logo.png", width: 200, height: 200,),
              SizedBox(
                height: 30,
              ),
              Text("You Hungry?\nFind the Best Restaurant Here", style: poppinsPink, textAlign: TextAlign.center,),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: RaisedButton(
                  color: pinkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child: Text("Get Started", style: poppinsPink.copyWith(color: whiteColor, fontWeight: FontWeight.w500),),
                  elevation: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
