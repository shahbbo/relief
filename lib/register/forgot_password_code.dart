import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/register/cubit/register_cubit.dart';
import 'package:relief/register/reset_password.dart';

class ForgotPasswordCode extends StatefulWidget {
  const ForgotPasswordCode({super.key, required this.tokenOtp, required this.email});
  final String tokenOtp ;
  final String email ;
  @override
  State<ForgotPasswordCode> createState() => _ForgotPasswordCodeState();
}

class _ForgotPasswordCodeState extends State<ForgotPasswordCode> {
  TextEditingController  otp1Controller = TextEditingController();
  TextEditingController  otp2Controller = TextEditingController();
  TextEditingController  otp3Controller = TextEditingController();
  TextEditingController  otp4Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
  listener: (context, state) {
    if(state is PatientVerifyCodeSuccessState){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResetPassword(
                tokenOtp: widget.tokenOtp,
              )));
    }
  },
  builder: (context, state) {
    var cubit = RegisterCubit.get(context);
    return ModalProgressHUD(
      inAsyncCall: state is PatientVerifyCodeLoadingState,
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
                      const Text(
                        'Enter The Code We',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        'Sent At',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                          Text(
                        widget.email,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFADB5BD),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Flexible(
                              child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: otp1Controller,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.cyan,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(),
                              ),
                            ),
                          )),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                              child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: otp2Controller,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.cyan,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(),
                              ),
                            ),
                          )),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                              child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: otp3Controller,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.cyan,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(),
                              ),
                            ),
                          )),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                              child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: otp4Controller,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.cyan,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(),
                              ),
                            ),
                          )),
                          const SizedBox(
                            width: 10.0,
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
                            if(otp1Controller.text.isNotEmpty && otp2Controller.text.isNotEmpty && otp3Controller.text.isNotEmpty && otp4Controller.text.isNotEmpty)
                            {
                              cubit.patientVerifyCode(
                                otp: otp1Controller.text + otp2Controller.text + otp3Controller.text + otp4Controller.text,
                                token: widget.tokenOtp,
                              );
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: const Color(0xFF212529),
                          child: const Text(
                            'Reset Password',
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
                            'Did\'t Get Code?',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                              },
                              child: const Text(
                                'Resend Code',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                    ]))),
          )),
    );
  },
);
  }
}
