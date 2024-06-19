import 'package:flutter/material.dart';
import 'package:relief/arrange/type_of_care.dart';

class ChooseCaregiver extends StatelessWidget {
  const ChooseCaregiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('   '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/Ellipse 20.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Available For Work',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff38b000)),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                height: 128,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xfff6f3ef),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/Rectangle 38.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '   mohamed ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e5c76)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  // Adjust the radius as needed
                                  bottomRight: Radius.circular(
                                      25.0), // Adjust the radius as needed
                                ),
                                border:
                                    Border.all(color: const Color(0xffbbd0ff)),
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3e5c76)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 128,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xfff6f3ef),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/Rectangle 38 (2).png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '   mohamed ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e5c76)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4 (1).png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4 (1).png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  // Adjust the radius as needed
                                  bottomRight: Radius.circular(
                                      25.0), // Adjust the radius as needed
                                ),
                                border:
                                    Border.all(color: const Color(0xffbbd0ff)),
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3e5c76)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 128,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xfff6f3ef),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/Rectangle 38.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '   mohamed ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e5c76)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  // Adjust the radius as needed
                                  bottomRight: Radius.circular(
                                      25.0), // Adjust the radius as needed
                                ),
                                border:
                                    Border.all(color: const Color(0xffbbd0ff)),
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3e5c76)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 128,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xfff6f3ef),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/Rectangle 38 (2).png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '   mohamed ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e5c76)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4 (1).png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4 (1).png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  // Adjust the radius as needed
                                  bottomRight: Radius.circular(
                                      25.0), // Adjust the radius as needed
                                ),
                                border:
                                    Border.all(color: const Color(0xffbbd0ff)),
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3e5c76)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 128,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xfff6f3ef),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/Rectangle 38.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '   mohamed ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e5c76)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  // Adjust the radius as needed
                                  bottomRight: Radius.circular(
                                      25.0), // Adjust the radius as needed
                                ),
                                border:
                                    Border.all(color: const Color(0xffbbd0ff)),
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3e5c76)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 128,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xfff6f3ef),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/Rectangle 38 (2).png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '   mohamed ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e5c76)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4 (1).png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4 (1).png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  // Adjust the radius as needed
                                  bottomRight: Radius.circular(
                                      25.0), // Adjust the radius as needed
                                ),
                                border:
                                    Border.all(color: const Color(0xffbbd0ff)),
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3e5c76)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 128,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xfff6f3ef),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40, left: 10),
                        child: Row(
                          children: [
                            Image.asset('assets/Rectangle 38.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '   mohamed ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const Text(
                                  'Caregiver',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff3e5c76)),
                                ),
                                const SizedBox(
                                  height: 13,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset('assets/Star 4.png'),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  // Adjust the radius as needed
                                  bottomRight: Radius.circular(
                                      25.0), // Adjust the radius as needed
                                ),
                                border:
                                    Border.all(color: const Color(0xffbbd0ff)),
                                color: Colors.white,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff3e5c76)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 265,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const typeOfCare()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: const Color(0xFFD90429),
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
