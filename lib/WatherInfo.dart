import 'package:flutter/material.dart';
import 'package:weather_app/NotificationScreen.dart';
import 'package:weather_app/OvalButton.dart';
import 'package:weather_app/SymptomsScreen.dart';
import 'package:weather_app/loading_Screen.dart';

class WeatherMenu extends StatelessWidget {
  const WeatherMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather Info",
          style: TextStyle(
              fontFamily: 'Spartan MB',
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[900]),
        ),
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.blueGrey,
            Colors.lightBlueAccent,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: OvalButton(
                color: Colors.deepPurple,
                text: 'Get Weather',
                onpress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoadingScreen()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: OvalButton(
                color: Colors.deepPurple,
                text: "Possible Symptoms",
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SymptomsScreen()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: OvalButton(
                color: Colors.deepPurple,
                text: "Cautions to take",
                onpress: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: OvalButton(
                color: Colors.deepPurple,
                text: "Manage Notification",
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
