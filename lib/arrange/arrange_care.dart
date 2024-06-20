import 'package:flutter/material.dart';
import 'package:relief/arrange/policy.dart';
import 'package:relief/screens/liveInCare.dart';

class ArrangeCare extends StatefulWidget {
  const ArrangeCare({super.key});

  @override
  State<ArrangeCare> createState() => _HomeState();
}

class _HomeState extends State<ArrangeCare> {
  Color button1Color = Colors.white;
  Color button2Color = Colors.white;
  Color button3Color = Colors.white;
  Color button4Color = Colors.white;
  Color button5Color = Colors.white;
  Color button6Color = Colors.white;
  Color button7Color = Colors.white;
  Color button8Color = Colors.white;
  Color button9Color = Colors.white;
  Color button10Color = Colors.white;

  void selectButton(int buttonNumber) {
    setState(() {
      button1Color = buttonNumber == 1 ? const Color(0xffbbd0ff) : Colors.white;
      button2Color = buttonNumber == 2 ? const Color(0xffbbd0ff) : Colors.white;
      button3Color = buttonNumber == 3 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  void selectButton2(int buttonNumber) {
    setState(() {
      button4Color = buttonNumber == 4 ? const Color(0xffbbd0ff) : Colors.white;
      button5Color = buttonNumber == 5 ? const Color(0xffbbd0ff) : Colors.white;
      button6Color = buttonNumber == 6 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  void selectButton3(int buttonNumber) {
    setState(() {
      button7Color = buttonNumber == 7 ? const Color(0xffbbd0ff) : Colors.white;
      button8Color = buttonNumber == 8 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  void selectButton4(int buttonNumber) {
    setState(() {
      button9Color = buttonNumber == 9 ? const Color(0xffbbd0ff) : Colors.white;
      button10Color =
          buttonNumber == 10 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'YOUR RELATIONSHIP\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffadb5bd),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'How Many People For Caring?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton4(9),
                            color: button9Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton4(10),
                            color: button10Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'WEEKS OF CARE',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffadb5bd),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'How many weeks of care are required?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton(1),
                            color: button1Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1-3 Weeks',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton(2),
                            color: button2Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '4-8 Weeks',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton(3),
                            color: button3Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Ongoing',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'START DATE',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffadb5bd),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'When would you like the care to start?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton2(4),
                            color: button4Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Immediately',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton2(5),
                            color: button5Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'within a week',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton2(6),
                            color: button6Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '1-3 month',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'ARRANGE CARE',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffadb5bd),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Does the property have a private bedroom for the carer?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton3(7),
                            color: button7Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => selectButton3(8),
                            color: button8Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'No',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff212529),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffbbd0ff),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: SizedBox(
                              width: 173,
                              height: 50,
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => liveInCare()));
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                color: Colors.white,
                                child: const Text(
                                  'Back',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffbbd0ff),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: SizedBox(
                              width: 173,
                              height: 50,
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Policy()));
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                color: Colors.red,
                                child: const Text(
                                  'Next',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
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
