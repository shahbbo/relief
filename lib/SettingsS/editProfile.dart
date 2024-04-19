import 'package:flutter/material.dart';

class editProfile extends StatelessWidget {
  const editProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 370,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 120,
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Color(0xFF212529),
                        fontSize: 20,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ), //AppBar
            SizedBox(height: 25),
            Container(
              width: 130,
              height: 130,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('asseets/Ellipse 1.png'),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(
                  side: BorderSide(
                    width: 8,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFFF6F3EF),
                  ),
                ),
              ),
            ), //Profile Picture
            SizedBox(height: 18),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ' upload photo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF343A40),
                        fontSize: 16,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                        width: 16,
                        height: 16,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Image.asset('asseets/plus.png'))
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(
              width: 400,
              height: 220,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 355,
                    height: 46,
                    child: TextField(
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.symmetric(vertical: 8),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        hintText: 'mohamedkhaled22@gmail.com',
                        hintStyle: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 16,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 355,
                    height: 46,
                    child: TextField(
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.symmetric(vertical: 8),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        hintText: 'moahmed khaled',
                        hintStyle: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 16,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 355,
                    height: 46,
                    child: TextField(
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.symmetric(vertical: 8),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        hintText: '01012131415',
                        hintStyle: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 16,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 355,
                    height: 46,
                    child: TextField(
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.symmetric(vertical: 8),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFBBD0FF)),
                        ),
                        hintText: '5th Settlement, egypt',
                        hintStyle: TextStyle(
                          color: Color(0xFF6C757D),
                          fontSize: 16,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Container(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFD90429),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    '   Save   ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
