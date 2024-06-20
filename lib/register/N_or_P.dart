import 'package:flutter/material.dart';
import 'package:relief/register/register.dart';
import 'package:relief/register/registerN1.dart';

class NorP extends StatefulWidget {
  const NorP({super.key});

  @override
  State<NorP> createState() => _NorPState();
}

class _NorPState extends State<NorP> {
  Color button1Color = Colors.white;
  Color button2Color = Colors.white;

  void changeColor(int buttonNumber) {
    setState(() {
      button1Color = buttonNumber == 1 ? const Color(0xffbbd0ff) : Colors.white;
      button2Color = buttonNumber == 2 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '  Choose Your Role  ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.center,
                  child: Image.asset('asseets/logo.png'),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Role ? ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 56,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterN1()));
                            changeColor(1);
                          },
                          color: button1Color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Text(
                            'Caregiver',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 56,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                            changeColor(2);
                          },
                          color: button2Color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Text(
                            'Elder',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
