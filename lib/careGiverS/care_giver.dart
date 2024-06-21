import 'package:flutter/material.dart';
import 'package:relief/careGiverS/AboutCr.dart';
import 'package:relief/careGiverS/reviews.dart';

class CareGiver extends StatelessWidget {
  const CareGiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // here the desired height
          child: AppBar()),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: SizedBox(
                      height: 130,
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.grey[0],
                        margin: const EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  const Stack(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/564x/37/ec/3e/37ec3e33bebcfea360ffbcb5bcc191c3.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                const Text(
                  'Mohamed Ali',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'nurse,',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'specialist',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('asseets/Star 3.png'),
                    const Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black26,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset('asseets/Ellipse 19.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      '32 Reviews',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Reviews()));
                      },
                      child: SizedBox(
                        width: 160,
                        height: 104,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset('asseets/review.png'),
                                  ],
                                ),
                                Spacer(),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Text(
                                      'Reviews',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '32',
                                      style: TextStyle(
                                        color: Color(0xff6c757d),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                Spacer(),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffbbd0ff),
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutCare()));
                      },
                      child: SizedBox(
                        width: 160,
                        height: 104,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset('asseets/about.png'),
                                  ],
                                ),
                                Spacer(),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Text(
                                      'About',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 4,
                                    ),
                                  ],
                                ),
                                Spacer(),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffbbd0ff),
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    ImageIcon(AssetImage('asseets/MapPin.png')),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Ismailia, Egypt'),
                    SizedBox(
                      width: 2,
                    ),
                    Text(''),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    ImageIcon(AssetImage('asseets/Vector.png')),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Since Nov 2020'),
                    // SizedBox(
                    //   width: 3,
                    // ),
                    // Text(''),
                    // SizedBox(
                    //   width: 2,
                    // ),
                    // Text(''),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Biography',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '[Nurse\'s Name] channels compassion and expertise, offering solace in healthcare chaos and extending aid to underserved communities, epitomizing nursing\'s essence.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff343a40),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 265,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: const Color(0xFFD90429),
                    child: const Text(
                      'Book Appointment',
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
          ],
        ),
      ),
    );
  }
}
