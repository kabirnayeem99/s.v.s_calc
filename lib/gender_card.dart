import 'package:flutter/material.dart';

const Color textColor = Colors.white60;

class GenderCard extends StatelessWidget {
  GenderCard({@required this.gender, this.icon});

  final gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: TextStyle(
            color: textColor,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
