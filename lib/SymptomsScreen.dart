import 'package:flutter/material.dart';
import 'package:weather_app/ColdWeather.dart';
import 'package:weather_app/HotWeather.dart';
import 'package:weather_app/OvalButton.dart';

class SymptomsScreen extends StatelessWidget {
  const SymptomsScreen({Key key}) : super(key: key);

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
                text: 'Hot Weather Symptoms',
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HotWeatherSymptoms()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: OvalButton(
                color: Colors.deepPurple,
                text: "Cold Weather Symptoms",
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ColdWeatherSymptoms()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: OvalButton(
                color: Colors.deepPurple,
                text: "Mild Weather Symptoms",
                onpress: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
