import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/shared/components/constants.dart';

import 'wigdet/ProfileEditWidget.dart';

class CaregiverViewDetailsEditProfileView extends StatefulWidget {
  CaregiverViewDetailsEditProfileView({super.key});

  @override
  State<CaregiverViewDetailsEditProfileView> createState() =>
      _CaregiverViewDetailsEditProfileViewState();
}

class _CaregiverViewDetailsEditProfileViewState
    extends State<CaregiverViewDetailsEditProfileView> {
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
    var cubit = inCareHeaderCubit.get(context).userDataCaregiver ;
    usernameController.text = cubit?.userData?.userName ?? '';
    emailController.text = cubit?.userData?.email ?? '';
    bioController.text = cubit?.userData?.biography ?? '';
    phoneController.text = cubit?.userData?.phone ?? '';
    locationController.text = inCareHeaderCubit.get(context).addressController.text;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {
        if (state is CarerEditProfileSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Profile Updated Successfully'),
              backgroundColor: Colors.green,
            ),
          );
          inCareHeaderCubit.get(context).getUserCaregiver(token: tokenCaregiver.toString());
        } else if (state is CarerEditProfileErrorState) {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileEditWidget(),
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
                        TextFormField(
                          controller: usernameController,
                          keyboardType: TextInputType.text,
                          readOnly: isUserName,
                          decoration: InputDecoration(
                                  hintText: cubit.userDataCaregiver?.userData
                                          ?.userName ??
                                      '',
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
                              icon: Icon(Icons.edit, color: Color(0xFF00B4D8)),
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
                                if(value != cubit.userDataCaregiver?.userData?.userName) {
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
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          readOnly: isEmail,
                          decoration: InputDecoration(
                                  hintText: cubit
                                          .userDataCaregiver?.userData?.email ??
                                      '',
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
                              icon: Icon(Icons.edit, color: Color(0xFF00B4D8)),
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
                                  return 'Please enter your email';
                                } else if (regexx.hasMatch(value) == false) {
                                  return 'Please enter a valid email';
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
                                if(value != cubit.userDataCaregiver?.userData?.userName) {
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
                          'Biography ',
                          style: TextStyle(
                            color: Color(0xFF000814),
                            fontSize: 18,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextFormField(
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          controller: bioController,
                          keyboardType: TextInputType.multiline,
                          readOnly: isBio,
                          decoration: InputDecoration(
                            hintText: cubit.userDataCaregiver?.userData
                                          ?.biography ??
                                      '',
                                  hintStyle: TextStyle(
                              color: Color(0xFF343A40),
                              fontSize: 16,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isBio = false;
                                });
                              },
                              icon: Icon(Icons.edit, color: Color(0xFF00B4D8)),
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
                          onEditingComplete: () {
                            setState(() {
                              isBio = true;
                            });
                          },

                            onChanged: (value) {
                              setState(() {
                                if(value != cubit.userDataCaregiver?.userData?.biography) {
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
                        TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          readOnly: isPhone,
                          decoration: InputDecoration(
                                  hintText: cubit
                                          .userDataCaregiver?.userData?.phone ??
                                      '',
                                  hintStyle: TextStyle(
                              color: Color(0xFF343A40),
                              fontSize: 16,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                            ),
                            prefixText: ' +20 |  ',
                            prefixStyle: TextStyle(
                              color: Color(0xFF6C757D),
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
                              icon: Icon(Icons.edit, color: Color(0xFF00B4D8)),
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
                            onChanged: (value) {
                              setState(() {
                                if(value != cubit.userDataCaregiver?.userData?.phone) {
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
                          'Location',
                          style: TextStyle(
                            color: Color(0xFF000814),
                            fontSize: 18,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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

                    ElevatedButton(
                      onPressed: isChange == false? null : () {
                        if (formKey.currentState!.validate()) {
                          cubit.carerEditProfile(
                            name: usernameController.text,
                            biography: bioController.text,
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
    );
      },
    );
  }
}
