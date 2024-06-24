import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/register/cubit/register_cubit.dart';
import 'package:relief/register/logInScreen.dart';

import '../elderApp.dart';
import '../shared/network/local/cache_helper.dart';

class RegisterP2 extends StatefulWidget {
  const RegisterP2({super.key});

  @override
  State<RegisterP2> createState() => _RegisterP2State();
}

class _RegisterP2State extends State<RegisterP2> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Color button1Color = Colors.white;
  Color button2Color = Colors.white;
  Location location = Location();
  TextEditingController GenderElderController = TextEditingController();
  String DateOfBirthElderController = '' ;
  TextEditingController recordElderController = TextEditingController();
  void changeColor(int buttonNumber) {
    setState(() {
      if (buttonNumber == 1) {
        button1Color = Colors.grey.shade300;
        button2Color = Colors.white;
        GenderElderController.text = 'male';
      } else {
        button1Color = Colors.white;
        button2Color = Colors.grey.shade300;
        GenderElderController.text = 'female' ;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if(state is RegisterPatientSuccessState){
         CacheHelper.saveData(key: 'tokenPatient', value: state.data['token']);
         CacheHelper.saveData(key: 'ID', value: state.data['UserData']['_id']);

         Navigator.push(context, MaterialPageRoute(builder: (context) => elderApp()));
        }
      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context) ;
        return ModalProgressHUD(
          inAsyncCall: state is RegisterPatientLoadingState,
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
                          onDateSubmitted: (value) {
                        DateOfBirthElderController = '${value.year}/${value.month}/${value.day}';
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
                      maxLines: null,
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
                        onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                LocationData locationData;
                                locationData = await location.getLocation();
                                cubit.patientRegister(
                                  username: cubit.nameElderController.text,
                                  email: cubit.emailElderController.text,
                                  dateOfBirth: DateOfBirthElderController,
                                  phone: cubit.phoneElderController.text,
                                  password: cubit.passwordElderController.text,
                                  rePassword:
                                      cubit.passwordElderController.text,
                                  healthRecordText: recordElderController.text,
                                  gender: GenderElderController.text,
                                  latitude: locationData.longitude,
                                  longitude: locationData.latitude,
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
          ),
        );
      },
    );
  }
}
