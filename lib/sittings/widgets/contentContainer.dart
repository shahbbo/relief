import 'package:flutter/material.dart';

class contentContainer extends StatelessWidget {
  final String? text;
  final IconData? prefixicon;
  final IconData? endicon;
  final Color colortext;

  final Color coloricon;

  final VoidCallback? onpressed;

  contentContainer(
      {this.text,
      this.endicon,
      this.prefixicon,
      required this.coloricon,
      required this.colortext,
      this.onpressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              prefixicon,
              color: coloricon,
            ),
          ),
          Text(text!, style: TextStyle(fontSize: 18, color: colortext)),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              endicon,
              color: Color(0xff343A40),
            ),
          ),
        ],
      ),
    );
  }
}
