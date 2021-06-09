import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/location_Screen.dart';
import 'package:weather_app/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await Weather().weatherData();

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationScreen(
            locationWeather: weatherData,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Colors.deepPurple[900],
          size: 40.0,
        ),
      ),
    );
  }
}
