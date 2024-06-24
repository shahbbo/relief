import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/register/forgot_password_code.dart';

import 'cubit/register_cubit.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is PatientForgotPasswordSuccessState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                   ForgotPasswordCode(
                     tokenOtp: state.data['token'],
                     email: emailcontroller.text,
                   )));
        }else if (state is CarerForgotPasswordSuccessState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ForgotPasswordCode(
                        tokenOtp: state.data['token'],
                        email: emailcontroller.text,
                      )));
        }
      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context);
        return ModalProgressHUD(
          inAsyncCall: state is PatientForgotPasswordLoadingState || state is CarerForgotPasswordLoadingState,
          child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  '    ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
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
                              const Row(
                                children: [
                                  Text(
                                    'Enter Your Email Address',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: emailcontroller,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: ('Email Address'),
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
                                   if (emailcontroller.text.isNotEmpty) {
                                      cubit.patientForgotPassword(
                                          email: emailcontroller.text);

                                      cubit.carerForgotPassword(
                                          email: emailcontroller.text);
                                    }
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  color: const Color(0xFF212529),
                                  child: const Text(
                                    'Continue',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ]))),
              )),
        );
      },
    );
  }
}
