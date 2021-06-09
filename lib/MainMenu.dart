import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/ChatScreen.dart';
import 'package:weather_app/MenuButtons.dart';
import 'package:weather_app/WatherInfo.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Allergy Flare",
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
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(30),
                    child: MenuButton(
                      icon: Icons.person,
                      buttonText: 'User Profile',
                      onpress: () {},
                    )),
                Padding(
                    padding: const EdgeInsets.all(30),
                    child: MenuButton(
                      icon: Icons.coronavirus_outlined,
                      buttonText: 'Allergy Information',
                      onpress: () {},
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: MenuButton(
                      icon: Icons.cloud,
                      buttonText: 'Weather Information',
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WeatherMenu()));
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: MenuButton(
                      icon: Icons.stacked_bar_chart,
                      buttonText: 'Statistics',
                      onpress: () {},
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(25),
                    child: MenuButton(
                      icon: Icons.playlist_add_check,
                      buttonText: 'Track Symptoms',
                      onpress: () {},
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 0, top: 30, bottom: 30),
                    child: MenuButton(
                      icon: Icons.article_outlined,
                      buttonText: 'Tips and news',
                      onpress: () {},
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(35),
                    child: MenuButton(
                      icon: Icons.warning_amber_rounded,
                      buttonText: 'Emergency',
                      onpress: () {},
                    )),
                Padding(
                    padding: const EdgeInsets.all(40),
                    child: MenuButton(
                      icon: Icons.contact_support_outlined,
                      buttonText: 'Contact Support',
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                      },
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
