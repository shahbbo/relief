import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  int valueIndex = 0 ;
  @override
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
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

            TabBar(
              controller: _tabController,
              indicatorColor: Color(0xff0096c7),
              tabs: [
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: valueIndex == 0 ? Color(0xff0096c7) : Color(0xff212529)),
                  ),
                ),
                Tab(
                  child: Text(
                    'My Reviews',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: valueIndex == 1 ? Color(0xff0096c7) : Color(0xff212529)),
                  ),
                ),
              ],
              onTap: (value){
                setState(() {
                  valueIndex = value ;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            valueIndex == 0 ?   Column(
              children: [
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
                      'Ali khaled',
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
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset('asseets/Vector (1).png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Helpful',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff6c757d),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset('asseets/Vector (2).png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Not Helpful',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6c757d),
                      ),
                    ),
                  ],
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
                      'Ali khaled',
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
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset('asseets/Vector (1).png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Helpful',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff6c757d),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset('asseets/Vector (2).png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Not Helpful',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6c757d),
                      ),
                    ),
                  ],
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
                      'Ali khaled',
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
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset('asseets/Vector (1).png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Helpful',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff6c757d),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Image.asset('asseets/Vector (2).png'),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      'Not Helpful',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6c757d),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ) : Column(
              children: [
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

              ],
            ),
          ],
        ),
      ),
    );
  }
}
