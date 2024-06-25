import 'package:flutter/material.dart';
import 'package:relief/careGiverS/add_review.dart';
import 'package:relief/careGiverS/reviews.dart';

class MyReviews extends StatelessWidget {
  const MyReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0), // here the desired height
          child: AppBar(
            title: const Text(
              'Reviews',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('asseets/Star 7.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 7.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 7.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 7.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 7.png'),
                const SizedBox(
                  width: 4,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    '4.5',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  '32',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff6c757d),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff6c757d),
                    )),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reviews()));
                  },
                  child: const Text(
                    'All',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff212529)),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'My Reviews',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0096c7)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 80,
                ),
                Container(
                  width: 104,
                  height: 2.0,
                  color: const Color(0xff0096c7),
                ),
              ],
            ),
            Divider(
              color: const Color(0xffdee2e6),
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Image.asset('asseets/Star 6.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 6.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 6.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 6.png'),
                const SizedBox(
                  width: 4,
                ),
                Image.asset('asseets/Star 6.png'),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  'Ali Khaled',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff6c757d)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'The caregiver provided exceptional support, demonstrating compassion, professionalism, and unwavering dedication to their duties.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff343a40),
              ),
            ),
            const SizedBox(
              height: 350,
            ),
            SizedBox(
              width: 265,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddReview()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: const Color(0xFFD90429),
                child: const Text(
                  'Add Review',
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
    );
  }
}
