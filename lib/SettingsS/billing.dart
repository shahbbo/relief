import 'package:flutter/material.dart';

class billing extends StatelessWidget {
  const billing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                      width: 200,
                      child: Text(
                        'Billing Information',
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
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '   Current card information',
                      style: TextStyle(
                        color: Color(0xFF212529),
                        fontSize: 25,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(15),
                                  ),
                                ),
                                hintText: '4117 3942 1309 8501',
                                hintStyle: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 16,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                                prefixIcon: Image.asset(
                                  'asseets/card.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 355,
                            height: 46,
                            child: Row(
                              children: [
                                Container(
                                  width: 177.5,
                                  height: 46,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: '   10/25',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF6C757D),
                                        fontSize: 16,
                                        fontFamily: 'Barlow',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 177.5,
                                  height: 46,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: '   103',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF6C757D),
                                        fontSize: 16,
                                        fontFamily: 'Barlow',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      suffixIcon: Image.asset(
                                        'asseets/Cvv.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '   Add New Card',
                      style: TextStyle(
                        color: Color(0xFF212529),
                        fontSize: 25,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
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
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(15),
                                  ),
                                ),
                                hintText: 'Card Number',
                                hintStyle: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 16,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                                prefixIcon: Image.asset(
                                  'asseets/card.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 355,
                            height: 46,
                            child: Row(
                              children: [
                                Container(
                                  width: 177.5,
                                  height: 46,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: '   MM/YY',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF6C757D),
                                        fontSize: 16,
                                        fontFamily: 'Barlow',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 177.5,
                                  height: 46,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15),
                                        ),
                                      ),
                                      hintText: '   CVV',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF6C757D),
                                        fontSize: 16,
                                        fontFamily: 'Barlow',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      suffixIcon: Image.asset(
                                        'asseets/Cvv.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                width: 361,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFD90429),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            '      Save      ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(
                                color: Colors.black,
                                // width: 1
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            '     Cancel     ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
