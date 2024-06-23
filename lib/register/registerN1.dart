import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/register/cubit/register_cubit.dart';
import 'package:relief/register/logInScreen.dart';
import 'package:relief/register/registerN2.dart';

class RegisterN1 extends StatefulWidget {
  const RegisterN1({super.key});

  @override
  State<RegisterN1> createState() => _RegisterN1State();
}

class _RegisterN1State extends State<RegisterN1> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  Location location = Location();

  RegExp regex = RegExp(r'^(?=.[A-Za-z])(?=.[0-9])(?=.[!@#$%^&]).+$');
  RegExp regexx = RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$');
  RegExp regexn = RegExp('[a-zA-Z]');
  RegExp regexp = RegExp('^(?:[+01]8)?[0-9]{10}');

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context);
        return ModalProgressHUD(
          inAsyncCall: state is LoadingPlace,
          color: Colors.transparent,
          progressIndicator: const CircularProgressIndicator(
            color: Colors.red,
          ),
          child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Create New Account',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              body: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: SingleChildScrollView(
                          child: Form(
                    key: formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [],
                          ),
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: cubit.nameCaregiverController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your name';
                              } else if (regexn.hasMatch(value) == false) {
                                return 'Name must contain only letters';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Email Address',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: cubit.emailCaregiverController,
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
                          const SizedBox(height: 5),
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: cubit.passwordCaregiverController,
                            obscureText: _obscureText,
                            keyboardType: TextInputType.visiblePassword,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              hintText: 'Enter Your Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
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
                              } else if (regex.hasMatch(value)) {
                                return 'Password must contain at least one uppercase letter, \n one lowercase letter, one number and one special character';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: cubit.passwordCaregiverController,
                            obscureText: _obscureText,
                            keyboardType: TextInputType.visiblePassword,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              hintText: 'Retype The Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
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
                              } else if (regex.hasMatch(value)) {
                                return 'Password must contain at least one uppercase letter, \n one lowercase letter, one number and one special character';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: cubit.phoneCaregiverController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: '+02',
                              hintText: 'Enter Your Phone Number',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your phone number';
                              } else if (regexp.hasMatch(value) == false) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: inCareHeaderCubit
                                .get(context)
                                .addressController,
                            keyboardType: TextInputType.streetAddress,
                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: '',
                              suffixIcon: IconButton(
                                icon:
                                    const Icon(Icons.location_searching_sharp),
                                onPressed: () async {
                                  LocationData locationData;
                                  locationData = await location.getLocation();
                                  inCareHeaderCubit.get(context).getPlace(
                                        lat: locationData.latitude,
                                            lon: locationData.longitude,
                                      );
                                },
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                          ),
                          const SizedBox(height: 10),
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
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: MaterialButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterN2()));
                                }
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              color: const Color(0xFFB91A13),
                              child: const Text(
                                'Next',
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
                          const SizedBox(height: 30),
                        ]),
                  ))))),
        );
      },
    );
  }
}
