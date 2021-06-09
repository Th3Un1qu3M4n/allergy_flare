import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification Settings",
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
            Colors.blueGrey[200],
            Colors.lightBlueAccent[100],
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Weather Notification',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.lightBlue[500],
                  activeColor: Colors.blue[900],
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: Divider(
                color: Colors.blue[900],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Symptoms Notification',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Switch(
                  value: isSwitched1,
                  onChanged: (value) {
                    setState(() {
                      isSwitched1 = value;
                      print(isSwitched1);
                    });
                  },
                  activeTrackColor: Colors.lightBlue[500],
                  activeColor: Colors.blue[900],
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: Divider(
                color: Colors.blue[900],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Cautions Notification',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[700]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Switch(
                  value: isSwitched2,
                  onChanged: (value) {
                    setState(() {
                      isSwitched2 = value;
                      print(isSwitched2);
                    });
                  },
                  activeTrackColor: Colors.lightBlue[500],
                  activeColor: Colors.blue[900],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
