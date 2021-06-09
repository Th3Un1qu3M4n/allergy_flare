import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String buttonText;
  final Function onpress;

  MenuButton({this.icon, this.buttonText, this.onpress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpress,
      child: Column(
        children: [
          Icon(
            icon,
            size: 70.0,
            color: Colors.black38,
          ),
          Text(
            buttonText,
            style: TextStyle(color: Colors.deepPurple[900]),
          ),
        ],
      ),
    );
  }
}
