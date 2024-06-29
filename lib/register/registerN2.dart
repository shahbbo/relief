import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/carerApp.dart';
import 'package:relief/register/cubit/register_cubit.dart';
import 'package:relief/register/logInScreen.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:relief/shared/network/local/cache_helper.dart';

import '../cubits/incareCubit/inCareCubit.dart';
import '../shared/components/constants.dart';

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
  Location location = Location();

  TextEditingController GenderCarerController = TextEditingController();
  String DateOfBirthCarerController = '';

  TextEditingController BiographyCarerController = TextEditingController();
  TextEditingController SmokeCarerController = TextEditingController();
  TextEditingController DriveCarerController = TextEditingController();

  RegExp regexd = RegExp(
      r'^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$');

  void changeColor(int buttonNumber) {
    setState(() {
      if (buttonNumber == 1) {
        button1Color = Colors.grey.shade300;
        button2Color = Colors.white;
        GenderCarerController.text = 'male';
      } else if (buttonNumber == 2) {
        button1Color = Colors.white;
        button2Color = Colors.grey.shade300;
        GenderCarerController.text = 'female';
      }
    });
  }

  void changeColor2(int buttonNumber) {
    setState(() {
      if (buttonNumber == 3) {
        button3Color = Colors.grey.shade300;
        button4Color = Colors.white;
        SmokeCarerController.text = 'yes';
      } else if (buttonNumber == 4) {
        button3Color = Colors.white;
        button4Color = Colors.grey.shade300;
        SmokeCarerController.text = 'no';
      }
    });
  }

  void changeColor3(int buttonNumber) {
    setState(() {
      if (buttonNumber == 5) {
        button5Color = Colors.grey.shade300;
        button6Color = Colors.white;
        DriveCarerController.text = 'yes';
      } else if (buttonNumber == 6) {
        button5Color = Colors.white;
        button6Color = Colors.grey.shade300;
        DriveCarerController.text = 'no';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) async {
        if(state is RegisterCarerSuccessState) {
          await CacheHelper.saveData(key: 'tokenCaregiver', value: state.data['token']);
          await CacheHelper.saveData(key: 'ID', value: state.data['UserData']['_id']);

          tokenCaregiver = await CacheHelper.getData(key: 'tokenCaregiver');
          await inCareHeaderCubit
              .get(context)
              .getUserCaregiver(token: tokenCaregiver.toString());
          await inCareHeaderCubit.get(context).getApprovedRequestsForCaregiver();
          await inCareHeaderCubit
              .get(context)
              .getApprovedRequestsForCaregiver();
          await inCareHeaderCubit.get(context).caregiverAcceptRequest();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Registered Successfully'),
              backgroundColor: Colors.green,
            ),
          );
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => const carerApp()));
          await  inCareHeaderCubit.get(context).mainScreensC[0];
        }
      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context);
        return ModalProgressHUD(
          inAsyncCall: state is RegisterCarerLoadingState,
          child: Scaffold(
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
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SizedBox(
                                  // width: 173,
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
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SizedBox(
                                  // width: 173,
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
                          onDateSubmitted: (value) {
                            DateOfBirthCarerController =
                                '${value.day}/${value.month}/${value.year}';
                          },
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
                          maxLines: null,
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
                            Expanded(
                              child:  Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SizedBox(
                                  // width: 173,
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
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SizedBox(
                                  // width: 173,
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
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SizedBox(
                                  // width: 173,
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
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SizedBox(
                                  // width: 173,
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
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                LocationData locationData;
                                locationData = await location.getLocation();
                                cubit.carerRegister(
                                  username: cubit.nameCaregiverController.text,
                                  email: cubit.emailCaregiverController.text,
                                  password: cubit.passwordCaregiverController.text,
                                  rePassword: cubit.passwordCaregiverController.text,
                                  gender: GenderCarerController.text,
                                  dateOfBirth: DateOfBirthCarerController,
                                  phone: cubit.phoneCaregiverController.text,
                                  doYouSmoke: SmokeCarerController.text,
                                  canYouDrive: DriveCarerController.text,
                                  biography: BiographyCarerController.text,
                                  longitude: locationData.longitude,
                                  latitude: locationData.latitude,
                                );
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
                                          builder: (context) =>
                                              const LoginScreen()));
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
          ),
        );
      },
    );
  }
}
