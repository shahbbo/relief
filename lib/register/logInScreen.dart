import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/carerApp.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/register/N_or_P.dart';
import 'package:relief/register/cubit/register_cubit.dart';
import 'package:relief/register/forgot_password.dart';
import 'package:relief/shared/components/constants.dart';
import 'package:relief/shared/network/local/cache_helper.dart';

import '../elderApp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // RegExp regex = RegExp(r'^(?=.[A-Za-z])(?=.[0-9])(?=.[!#?%$@]).{8,}$');

  RegExp regexx = RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$');

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) async {
        if (state is LoginPatientSuccessState) {

          await CacheHelper.saveData(key: 'tokenPatient', value: state.data['token']);
          await CacheHelper.saveData(key: 'ID', value: state.data['UserData']['_id']);

          tokenPatient = await CacheHelper.getData(key: 'tokenPatient');
          await inCareHeaderCubit.get(context).getUserDataPatient(token: tokenPatient.toString());
          await inCareHeaderCubit.get(context).getAllUserDataCaregiver();
          await inCareHeaderCubit.get(context).getApprovedRequestsForPatient();

          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const elderApp()));

          await inCareHeaderCubit.get(context).mainScreens[0];
        }
        else if(state is LoginCaregiverSuccessState) {
          await CacheHelper.saveData(key: 'tokenCaregiver', value: state.data['token']);
          await CacheHelper.saveData(key: 'ID', value: state.data['UserData']['_id']);

          tokenCaregiver = await CacheHelper.getData(key: 'tokenCaregiver');
          await inCareHeaderCubit.get(context).getUserCaregiver(token: tokenCaregiver.toString());
          await inCareHeaderCubit.get(context).getApprovedRequestsForCaregiver();
          await inCareHeaderCubit
              .get(context)
              .getApprovedRequestsForCaregiver();
          await inCareHeaderCubit.get(context).caregiverAcceptRequest();
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => const carerApp()));
          await inCareHeaderCubit.get(context).mainScreensC[0];
        }
      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context);
        return ModalProgressHUD(
          inAsyncCall: state is LoginPatientLoadingState || state is LoginCaregiverLoadingState,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.center,
                          child: Image.asset('asseets/logo.png'),
                        ),
                        const Row(
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Email Address',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Email Address',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email address';
                            } else if (regexx.hasMatch(value) == false) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          obscureText: _obscureText,
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility : Icons
                                    .visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            } /*else if (regex.hasMatch(value) == false) {
                              return 'Password must contain at least one uppercase letter, \n one lowercase letter, one number and one special character';
                            }*/
                            return null;
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const ForgotPassword()));
                                },
                                child: const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
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
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                print('Email: ${emailController.text}');
                                print('Password: ${passwordController.text}');

                                cubit.patientLogin(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );

                                cubit.caregiverLogin(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            color: Color(0xFFB91A13),
                            child: const Text(
                              'Log In',
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
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const NorP()));
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFFB91A13),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


extension EmailValidator on String {
  bool isValidEmail(String value) {
    return RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$')
        .hasMatch(value);
  }
}