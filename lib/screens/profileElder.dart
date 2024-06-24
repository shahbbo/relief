import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/components/erlder_name_photo.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

import '../shared/components/constants.dart';
import '../shared/network/local/cache_helper.dart';

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


  bool isChange = false;
  Location location = Location();

  RegExp regex = RegExp(r'^(?=.[A-Za-z])(?=.[0-9])(?=.[!#?%$@]).{8,}$');
  RegExp regexx = RegExp(r'[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$');
  RegExp regexn = RegExp('[a-zA-Z]');
  RegExp regexp = RegExp('^(?:[+01]8)?[0-9]{10}');

  @override
  void initState() {
    var cubit = inCareHeaderCubit.get(context).userDataPatient;
    usernameController.text = cubit?.userData?.userName ?? '';
    emailController.text = cubit?.userData?.email ?? '';
    phoneController.text = cubit?.userData?.phone ?? '';
    locationController.text = inCareHeaderCubit.get(context).addressController.text;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {
        if (state is PatientEditProfileSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Profile Updated Successfully'),
              backgroundColor: Colors.green,
            ),
          );
          tokenPatient = CacheHelper.getData(key: 'tokenPatient');
          inCareHeaderCubit.get(context).getUserDataPatient(token: tokenPatient.toString());
        } else if (state is PatientEditProfileErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
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
                                  hintText: cubit.userDataPatient?.userData?.userName ?? '',
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
                                onChanged: (value) {
                              setState(() {
                                if(value != cubit.userDataPatient?.userData?.userName) {
                                  isChange = true;
                                } else {
                                  isChange = false;
                                }
                              });
                                }
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
                                  hintText: cubit.userDataPatient?.userData?.email ?? '',
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
                                onChanged: (value) {
                                    setState(() {
                                      if(value != cubit.userDataPatient?.userData?.email) {
                                        isChange = true;
                                      } else {
                                        isChange = false;
                                      }
                                    });
                                  }
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
                                  hintText: cubit.userDataPatient?.userData?.phone ?? '',
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
                                  onChanged: (value) {
                                    setState(() {
                                      if(value != cubit.userDataPatient?.userData?.phone) {
                                        isChange = true;
                                      } else {
                                        isChange = false;
                                      }
                                    });
                                  },
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
                                  hintText: cubit.addressController.text,
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

                          ElevatedButton(
                            onPressed: isChange == false? null : () {
                              if (formKey.currentState!.validate()) {
                                cubit.patientEditProfile(
                                  name: usernameController.text,
                                  email: emailController.text,
                                  phone: phoneController.text,
                                );
                              }
                            },
                            child: Text(
                              'Save Changes',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
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
      },
    );
  }
}
