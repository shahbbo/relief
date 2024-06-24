import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/register/cubit/register_cubit.dart';
import 'package:relief/sittings/widgets/button.dart';
import 'package:relief/sittings/widgets/textfieldpassword.dart';

class ChangePasswCarer extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  static const String id = 'changepassworddetails';

  final TextEditingController oldPasswordElderController =
      TextEditingController();
  final TextEditingController newPasswordElderController =
      TextEditingController();
  final TextEditingController confirmPasswordElderController =
      TextEditingController();

  // final RegExp regex = RegExp(r'^(?=.[A-Za-z])(?=.[0-9])(?=.[!#?%$@]).{8,}$');

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is carerChangePasswordSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Password Changed Successfully'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context);
        return ModalProgressHUD(
          inAsyncCall: state is carerChangePasswordLoadingState,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Change Password',
                style: TextStyle(fontSize: 20),
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset('asseets/Logoo.png')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Current Password',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: textfieldpassword(
                        text: 'Enter your current Password',
                        obscureText: true,
                        controller: oldPasswordElderController,
                      ),
                    ),
                    /*   Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),*/
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'New Password',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: textfieldpassword(
                        text: 'Enter new Password',
                        obscureText: true,
                        controller: newPasswordElderController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Confirm New Password',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 10),
                      child: textfieldpassword(
                        text: 'Retype the Password',
                        obscureText: true,
                        controller: confirmPasswordElderController,
                      ),
                    ),
                    Button(
                      text: 'Save',
                      onpressed: () {
                        print(oldPasswordElderController.text);
                        print(newPasswordElderController.text);
                        print(confirmPasswordElderController.text);
                        if (formKey.currentState!.validate()) {
                          cubit.carerChangePassword(
                            currentPassword: oldPasswordElderController.text,
                            newPassword: newPasswordElderController.text,
                            confirmPassword:
                                confirmPasswordElderController.text,
                          );
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
