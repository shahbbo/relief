import 'package:flutter/material.dart';
import 'package:relief/careGiverS/reviews.dart';

class CareGiver extends StatefulWidget {
  CareGiver({super.key});

  @override
  State<CareGiver> createState() => _CareGiverState();
}

class _CareGiverState extends State<CareGiver> {
  TextEditingController Day = TextEditingController();

  TextEditingController Month = TextEditingController();

  TextEditingController Hour = TextEditingController();

  TextEditingController Minute = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // here the desired height
          child: AppBar()),
      body: SingleChildScrollView(
        child: Padding(
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
                        'Caregiver,',
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
                        'Specialist',
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
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Reviews()));
                    },
                    label: Text('   Reviews '),
                    icon: Icon(Icons.reviews),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: const BorderSide(
                          color: const Color(0xffbbd0ff),
                        ),
                      ),
                    ),
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
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // const Row(
                  //   children: [
                  //     ImageIcon(AssetImage('asseets/Vector.png')),
                  //     SizedBox(
                  //       width: 5,
                  //     ),
                  //     Text('Since Nov 2020'),
                  //   ],
                  // ),
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
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return SingleChildScrollView(
                                child: AlertDialog(
                                  content: Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Spacer(),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(Icons.close),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Text(
                                              'Day',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Container(
                                            height: 55,
                                            width: 300,
                                            child: TextFormField(
                                              controller: Day,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                  labelText: 'Day',
                                                  labelStyle: TextStyle(
                                                      color: Color(0xffADB5BD)),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffBBD0FF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffBBD0FF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  )),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0, top: 8.0),
                                            child: Text(
                                              'Month',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Container(
                                            height: 55,
                                            width: 300,
                                            child: TextFormField(
                                              controller: Month,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                  labelText: 'Month',
                                                  labelStyle: TextStyle(
                                                      color: Color(0xffADB5BD)),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffBBD0FF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffBBD0FF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  )),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Hour',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(
                                                flex: 1,
                                              ),
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Minutes',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                            ],
                                          ),
                                          const SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 115,
                                                child: TextFormField(
                                                  controller: Hour,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: '00',
                                                      labelStyle: TextStyle(
                                                          color: Color(
                                                              0xffADB5BD)),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      )),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                width: 115,
                                                child: TextFormField(
                                                  controller: Minute,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: '00',
                                                      labelStyle: TextStyle(
                                                          color: Color(
                                                              0xffADB5BD)),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      )),
                                                ),
                                              ),
                                              Spacer(
                                                flex: 3,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0, top: 8),
                                            child: Text(
                                              'Determine the period of service',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Container(
                                            height: 55,
                                            width: 300,
                                            child: TextFormField(
                                              controller: Day,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                  labelText:
                                                      'The Number Of Days',
                                                  labelStyle: TextStyle(
                                                      color: Color(0xffADB5BD)),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffBBD0FF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xffBBD0FF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
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
      ),
    );
  }
}
