import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:relief/components/erlder_name_photo.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class elderprofile extends StatefulWidget {
  elderprofile({super.key});

  @override
  State<elderprofile> createState() => _elderprofileState();
}

class _elderprofileState extends State<elderprofile> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  bool isUserName = true;

  TextEditingController emailController = TextEditingController();
  bool isEmail = true;

  TextEditingController bioController = TextEditingController();
  bool isBio = true;

  TextEditingController phoneController = TextEditingController();
  bool isPhone = true;

  TextEditingController locationController = TextEditingController();
  bool isLocation = true;

  Location location = Location();

  RegExp regex = RegExp(r'^(?=.[A-Za-z])(?=.[0-9])(?=.[!#?%$@]).{8,}$');
  RegExp regexx = RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$');
  RegExp regexn = RegExp('[a-zA-Z]');
  RegExp regexp = RegExp('^(?:[+01]8)?[0-9]{10}');

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                elderNamePhoto(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Username ',
                              style: TextStyle(
                                color: Color(0xFF000814),
                                fontSize: 18,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            TextFormField(
                              controller: usernameController,
                              keyboardType: TextInputType.text,
                              readOnly: isUserName,
                              decoration: InputDecoration(
                                hintText: 'Mohamed Khaled',
                                hintStyle: TextStyle(
                                  color: Color(0xFF343A40),
                                  fontSize: 16,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isUserName = false;
                                    });
                                  },
                                  icon: Icon(Icons.edit,
                                      color: Color(0xFF00B4D8)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF00B4D8)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                } else if (regexn.hasMatch(value) == false) {
                                  return 'Name must contain only letters';
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                setState(() {
                                  isUserName = true;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Email Address ',
                              style: TextStyle(
                                color: Color(0xFF000814),
                                fontSize: 18,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              readOnly: isEmail,
                              decoration: InputDecoration(
                                hintText: 'mohamedkhaled22@gmail.com',
                                hintStyle: TextStyle(
                                  color: Color(0xFF343A40),
                                  fontSize: 16,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isEmail = false;
                                    });
                                  },
                                  icon: Icon(Icons.edit,
                                      color: Color(0xFF00B4D8)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF00B4D8)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email address';
                                } else if (regexx.hasMatch(value) == false) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                setState(() {
                                  isEmail = true;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number ',
                              style: TextStyle(
                                color: Color(0xFF000814),
                                fontSize: 18,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              readOnly: isPhone,
                              decoration: InputDecoration(
                                hintText: '01012131415',
                                hintStyle: TextStyle(
                                  color: Color(0xFF343A40),
                                  fontSize: 16,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                                prefixText: ' +20 |  ',
                                prefixStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w400,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isPhone = false;
                                    });
                                  },
                                  icon: Icon(Icons.edit,
                                      color: Color(0xFF00B4D8)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF00B4D8)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone number';
                                } else if (regexp.hasMatch(value) == false) {
                                  return 'Please enter a valid phone number';
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                setState(() {
                                  isPhone = true;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Color(0xFF000814),
                                fontSize: 18,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            TextFormField(
                              controller: inCareHeaderCubit
                                  .get(context)
                                  .addressController,
                              keyboardType: TextInputType.streetAddress,
                              readOnly: true,
                              decoration: InputDecoration(
                                hintText: '',
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                      color: Color(0xFF00B4D8),
                                      Icons.location_searching_sharp),
                                  onPressed: () async {
                                    LocationData locationData;
                                    locationData = await location.getLocation();
                                    inCareHeaderCubit.get(context).getPlace(
                                          lat: locationData.latitude,
                                          lon: locationData.longitude,
                                        );
                                  },
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFFBBD0FF)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Color(0xFF00B4D8)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
