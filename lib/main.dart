import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreenGreen(),
  ));

/*
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), ()=> Navigator.of(context).push(_createRoute()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "FlutKart", style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight:
                          FontWeight.bold)
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Text(
                      "Online Store \nFor Everyone",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ],
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
*/

Route _createRouteBlue() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SplashScreenBlue(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRouteGreen() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SplashScreenGreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class SplashScreenBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Timer(Duration(seconds: 10), ()=> Navigator.of(context).push(_createRouteGreen()));

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                      child: Text('Go green!'),
                      onPressed: () {
                          Navigator.of(context).push(_createRouteGreen());
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                          "FlutKart", style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight:
                          FontWeight.bold)
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top:20.0),
                      ),
                      Text(
                          "Online Store \nFor You!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                          )
                      )
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}

class SplashScreenGreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Timer(Duration(seconds: 5), ()=> Navigator.of(context).push(_createRouteBlue()));

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.greenAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Go blue!'),
                        onPressed: () {
                          Navigator.of(context).push(_createRouteBlue());
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                          "FlutKart", style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight:
                          FontWeight.bold)
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top:20.0),
                      ),
                      Text(
                          "Online Store \nFor Us!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                          )
                      )
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}