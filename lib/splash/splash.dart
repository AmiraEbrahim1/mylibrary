import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mylibrary/contactus/contactus.dart';
import 'package:mylibrary/home/home.dart';
import 'package:mylibrary/rateus/rate.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState()
  {
    super.initState();
    Timer(
        Duration(seconds: 3),()=>Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()))
    );
  }
  // final Shader linearGradient = LinearGradient (
  //     colors: <Color>[Color(0xFF9B2282),Color(0xFFEEAB63),],
  // ).createShader(Rect.fromLTWH(20.0, 20.0, 0.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children:
        [
          SizedBox(height: 300,),
          Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(image: AssetImage('images/bg.png'),fit: BoxFit.cover)
              ),
            ),
          SizedBox(height: 10,),
          Text('Flying books',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                color: Color.fromRGBO(168, 146, 84,1),
                fontStyle: FontStyle.italic
            ),
          ),
        ],
      ),
    );
  }
}
