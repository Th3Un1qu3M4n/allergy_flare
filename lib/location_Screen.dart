import 'package:flutter/material.dart';
import 'package:weather_app/ColdWeather.dart';
import 'package:weather_app/Constants.dart';
import 'package:weather_app/HotWeather.dart';
import 'package:weather_app/OvalButton.dart';
import 'package:weather_app/city_Screen.dart';
import 'package:weather_app/weather.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});

  final locationWeather;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Weather weatherModel = Weather();
  var temprature;
  int temp;
  String weatherIcon;
  String messege;
  String city;

  @override
  void initState() {
    super.initState();

    UpdateUI(widget.locationWeather);
  }

  // ignore: non_constant_identifier_names
  void UpdateUI(dynamic weather) {
    temprature = weather['main']['temp'];
    print(temprature);
    temp = temprature.toInt();
    var id = weather['weather'][0]['id'];
    weatherIcon = weatherModel.getWeatherIcon(id);
    messege = weatherModel.getMessage(temp);
    city = weather['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      var weatherData = await weatherModel.weatherData();
                      UpdateUI(weatherData);
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                      var typerName = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CityScreen()));
                      if (typerName != null) {
                        var weatherData =
                            await weatherModel.cityWeather(typerName);
                        setState(() {
                          UpdateUI(weatherData);
                        });
                      }
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temp°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              OvalButton(
                color: Colors.deepPurple,
                text: 'Get Symptoms',
                onpress: () {
                  if (temp > 25) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HotWeatherSymptoms()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ColdWeatherSymptoms()));
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  '$messege in $city',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
