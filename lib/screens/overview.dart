import 'package:flutter/material.dart';
import 'package:relief/arrange/policy.dart';
import 'package:relief/screens/speakToAnExp.dart';

class overview extends StatelessWidget {
  const overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Container(
        width: 360,
        height: 650,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(children: [
          Container(
            width: 361,
            // height: 110,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 32,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Image.asset('asseets/Money.png')),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Only pay for the care you need with our simple pricing structure',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF3E5C76),
                      fontSize: 14,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: 361,
            // height: 110,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 32,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Image.asset('asseets/Users.png')),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Choose your carer from a network of friendly, independent carers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF3E5C76),
                      fontSize: 14,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: 361,
            // height: 110,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 32,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Image.asset('asseets/UserCircleGear.png')),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Easily manage your care within your Myrelief account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF3E5C76),
                      fontSize: 14,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: 361,
            // height: 110,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF6F3EF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 32,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Image.asset('asseets/FirstAidKit.png')),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Receive guidance from a dedicated Family Support Specialist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF3E5C76),
                      fontSize: 14,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 44,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => speakToAnExp()),
                  );
                },
                child: Text(
                  'Speak To An Expert',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                  padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(width: 1, color: Color(0xFF8D99AE)),
                  )),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Policy()),
                  );
                },
                child: Text(
                  'Get Started Online',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontFamily: 'Barlow',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red),
                  padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(width: 1, color: Color(0xFF8D99AE)),
                  )),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
