import 'package:flutter/material.dart';

class elderNamePhoto extends StatelessWidget {
  const elderNamePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 51,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // width: 148,
                  child: Text(
                    'Hello Mr. Mohamed ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '5th Settlement, egypt',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF3E5C76),
                    fontSize: 14,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("asseets/Ellipse 1.png"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
