import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
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
                            hintText:
                                'I am a compassionate caregiver with over 5 years of experience, dedicated to providing personalized and empathetic care. ',
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
                            hintText: '01012131415',
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
                          controller: locationController,
                          keyboardType: TextInputType.streetAddress,
                          readOnly: isLocation,
                          decoration: InputDecoration(
                            hintText: '5th Settlement, egypt',
                            hintStyle: TextStyle(
                              color: Color(0xFF343A40),
                              fontSize: 16,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Image.asset('asseets/call.png'),
                            prefixText: '| ',
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
  }
}
