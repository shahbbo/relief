import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/register/cubit/register_cubit.dart';
import 'package:relief/register/logInScreen.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key, required this.tokenOtp});

  final String tokenOtp;

  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if(state is PatientResetPasswordSuccessState){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginScreen()));
        }
      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context);
        return ModalProgressHUD(
          inAsyncCall: state is PatientResetPasswordLoadingState,
          child: Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: AlignmentDirectional.center,
                                child: Image.asset('asseets/logo.png'),
                              ),
                              TextFormField(
                                controller: newPasswordController,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: ('Set New Password'),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: confirmPasswordController,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: ('Confirm New Password'),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
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
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: MaterialButton(
                                  onPressed: () {
                                    cubit.patientResetPassword(
                                        newPassword: newPasswordController.text,
                                        confirmPassword: confirmPasswordController.text,
                                        token: tokenOtp
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color: const Color(0xFF212529),
                                  child: const Text(
                                    'Save',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ]))),
              ),
              appBar: AppBar(
                title: const Text(
                  '    ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )),
        );
      },
    );
  }
}
