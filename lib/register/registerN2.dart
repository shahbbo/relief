import 'package:flutter/material.dart';
import 'package:relief/register/logInScreen.dart';
import 'package:dob_input_field/dob_input_field.dart';

class RegisterN2 extends StatefulWidget {
  const RegisterN2({super.key});

  @override
  State<RegisterN2> createState() => _RegisterN2State();
}

class _RegisterN2State extends State<RegisterN2> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Color button1Color = Colors.white;
  Color button2Color = Colors.white;
  Color button3Color = Colors.white;
  Color button4Color = Colors.white;
  Color button5Color = Colors.white;
  Color button6Color = Colors.white;

  TextEditingController GenderCarerController = TextEditingController();
  TextEditingController DateOfBirthCarerController = TextEditingController();
  TextEditingController BiographyCarerController = TextEditingController();
  TextEditingController SmokeCarerController = TextEditingController();
  TextEditingController DriveCarerController = TextEditingController();

  RegExp regexd = RegExp(
      r'^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$');

  void changeColor(int buttonNumber) {
    setState(() {
      button1Color = buttonNumber == 1 ? const Color(0xffbbd0ff) : Colors.white;
      button2Color = buttonNumber == 2 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  void changeColor2(int buttonNumber) {
    setState(() {
      button3Color = buttonNumber == 3 ? const Color(0xffbbd0ff) : Colors.white;
      button4Color = buttonNumber == 4 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  void changeColor3(int buttonNumber) {
    setState(() {
      button5Color = buttonNumber == 5 ? const Color(0xffbbd0ff) : Colors.white;
      button6Color = buttonNumber == 6 ? const Color(0xffbbd0ff) : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Answer These Questions',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Gender ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      width: 173,
                      height: 56,
                      child: MaterialButton(
                        onPressed: () => changeColor(1),
                        color: button1Color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      width: 173,
                      height: 56,
                      child: MaterialButton(
                        onPressed: () => changeColor(2),
                        color: button2Color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Text(
                          'Female',
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
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Date Of Birth',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              DOBInputField(
                firstDate: DateTime(1920),
                lastDate: DateTime.now(),
                showLabel: true,
                showCursor: true,
                dateFormatType: DateFormatType.DDMMYYYY,
                autovalidateMode: AutovalidateMode.always,
                fieldLabelText: "DD/MM/YYYY",
                inputDecoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Biography',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: BiographyCarerController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Write A Biography About Yourself',
                  hintStyle: TextStyle(color: Color(0xffadb5bd)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Do You Smoke? ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      width: 173,
                      height: 56,
                      child: MaterialButton(
                        onPressed: () => changeColor2(3),
                        color: button3Color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Text(
                          'Yes',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SizedBox(
                          width: 173,
                          height: 56,
                          child: MaterialButton(
                            onPressed: () => changeColor2(4),
                            color: button4Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Text(
                              'No',
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
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Can You Drive? ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      width: 173,
                      height: 56,
                      child: MaterialButton(
                        onPressed: () => changeColor3(5),
                        color: button5Color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Text(
                          'Yes',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SizedBox(
                      width: 173,
                      height: 56,
                      child: MaterialButton(
                        onPressed: () => changeColor3(6),
                        color: button6Color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Text(
                          'No',
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
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 256.0,
                    height: 1.0,
                    color: Colors.black, // Line color
                  ),
                ],
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print('Name: ${DateOfBirthCarerController.text}');
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: const Color(0xFFB91A13),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already Have An Account?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
