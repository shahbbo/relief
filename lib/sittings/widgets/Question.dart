import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String? text;
  String? answer;

  Question({this.text, this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            answer!,
            style: TextStyle(
                color: Color(0xff495057),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
