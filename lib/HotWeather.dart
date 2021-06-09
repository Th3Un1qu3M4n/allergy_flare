import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HotWeatherSymptoms extends StatefulWidget {
  const HotWeatherSymptoms({Key key}) : super(key: key);

  @override
  _HotWeatherSymptomsState createState() => _HotWeatherSymptomsState();
}

class _HotWeatherSymptomsState extends State<HotWeatherSymptoms> {
  final firestore =
      FirebaseFirestore.instance.collection('hotsymptoms').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Symptoms",
            style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[900]),
          ),
          elevation: 10.0,
          centerTitle: true,
          backgroundColor: Colors.blueAccent[700],
        ),
        body: StreamBuilder(
          stream: firestore,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, int index) {
                  return Container(
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
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple,
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                  )
                                ],
                                color: Colors.lightBlueAccent),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data.docs[index]['symptom1'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 170,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple,
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                  )
                                ],
                                color: Colors.lightBlueAccent),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data.docs[index]['symptom2'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 170,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                              color: Colors.lightBlueAccent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepPurple,
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data.docs[index]['symptom3'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                });
          },
        ));
  }
}
