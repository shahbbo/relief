import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:relief/register/logInScreen.dart';

class RegisterP2 extends StatefulWidget {
  const RegisterP2({super.key});

  @override
  State<RegisterP2> createState() => _RegisterP2State();
}

class _RegisterP2State extends State<RegisterP2> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Color button1Color = Colors.white;
  Color button2Color = Colors.white;

  TextEditingController GenderElderController = TextEditingController();
  TextEditingController DateOfBirthElderController = TextEditingController();
  TextEditingController recordElderController = TextEditingController();

  void changeColor(int buttonNumber) {
    setState(() {
      if (buttonNumber == 1) {
        button1Color = Colors.grey.shade300;
        button2Color = Colors.white;
      } else {
        button1Color = Colors.white;
        button2Color = Colors.grey.shade300;
      }
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
              const SizedBox(
                height: 12,
              ),
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
              // TextFormField(
              //   controller: DateOfBirthElderController,
              //   keyboardType: TextInputType.datetime,
              //   decoration: InputDecoration(
              //     hintText: 'DD/MM/YYYY',
              //     hintStyle: TextStyle(color: Color(0xffadb5bd)),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(25),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Health Record',
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
                controller: recordElderController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText:
                      'Enter the health record and any important information...',
                  hintStyle: TextStyle(color: Color(0xffadb5bd)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                  onPressed: () {},
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
