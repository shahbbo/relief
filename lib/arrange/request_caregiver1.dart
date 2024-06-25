import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/arrange/request_caregiver2.dart';

import 'cubit/requests_cubit.dart';

class RequestCaregiver1 extends StatefulWidget {
  const RequestCaregiver1({super.key});

  @override
  State<RequestCaregiver1> createState() => _HomeState();
}

class _HomeState extends State<RequestCaregiver1> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Color button1Color = Colors.white;
  Color button2Color = Colors.white;
  Color button3Color = Colors.white;
  Color button4Color = Colors.white;
  Color button5Color = Colors.white;
  Color button6Color = Colors.white;
  Color button7Color = Colors.white;
  Color button8Color = Colors.white;
  Color button9Color = Colors.white;
  Color button10Color = Colors.white;

  void selectButton(int buttonNumber) {
    setState(() {
      if (buttonNumber == 1) {
        button1Color = Color(0xffbbd0ff);
        button2Color = Colors.white;
        RequestsCubit.of(context).numberElders.text = '1';
      } else if (buttonNumber == 2) {
        button1Color = Colors.white;
        button2Color = Color(0xffbbd0ff);
        RequestsCubit.of(context).numberElders.text = '2';
      }
    });
  }
  void selectButton2(int buttonNumber) {
    setState(() {
      if (buttonNumber == 3) {
        button3Color = Color(0xffbbd0ff);
        button4Color = Colors.white;
        button5Color = Colors.white;
        RequestsCubit.of(context).weeksCare.text = '1-3 weeks';
      } else if (buttonNumber == 4) {
        button3Color = Colors.white;
        button4Color = Color(0xffbbd0ff);
        button5Color = Colors.white;
        RequestsCubit.of(context).weeksCare.text = '4-8 weeks';
      } else if (buttonNumber == 5) {
        button3Color = Colors.white;
        button4Color = Colors.white;
        button5Color = Color(0xffbbd0ff);
        RequestsCubit.of(context).weeksCare.text = 'Ongoing';
      }
    });
  }
  void selectButton3(int buttonNumber) {
    setState(() {
      if (buttonNumber == 6) {
        button6Color = Color(0xffbbd0ff);
        button7Color = Colors.white;
        button8Color = Colors.white;
        RequestsCubit.of(context).startDate.text = 'Immediately';
      } else if (buttonNumber == 7) {
        button6Color = Colors.white;
        button7Color = Color(0xffbbd0ff);
        button8Color = Colors.white;
        RequestsCubit.of(context).startDate.text = 'within a week';
      } else if (buttonNumber == 8) {
        button6Color = Colors.white;
        button7Color = Colors.white;
        button8Color = Color(0xffbbd0ff);
        RequestsCubit.of(context).startDate.text = '1-3 month';
      }
    });
  }
  void selectButton4(int buttonNumber) {
    setState(() {
      if (buttonNumber == 9) {
        button9Color = Color(0xffbbd0ff);
        button10Color = Colors.white;
        RequestsCubit.of(context).room.text = 'yes';
      } else if (buttonNumber == 10) {
        button9Color = Colors.white;
        button10Color = Color(0xffbbd0ff);
        RequestsCubit.of(context).room.text = 'no';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequestsCubit, RequestsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var reqCubit = RequestsCubit.of(context);
        return SafeArea(
          child: ModalProgressHUD(
            inAsyncCall: state is PublicRequestLoadingState,
            color: Colors.transparent,
            progressIndicator: const CircularProgressIndicator(
              color: Colors.red,
            ),
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Number Of Eldders\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xffadb5bd),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'How Many People For Caring?',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton(1),
                                    color: button1Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton(2),
                                    color: button2Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'WEEKS OF CARE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xffadb5bd),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'How many weeks of care are required?',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton2(3),
                                    color: button3Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '1-3 Weeks',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton2(4),
                                    color: button4Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '4-8 Weeks',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton2(5),
                                    color: button5Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ongoing',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'START DATE',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xffadb5bd),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'When would you like the care to start?',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton3(6),
                                    color: button6Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Immediately',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton3(7),
                                    color: button7Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'within a week',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton3(8),
                                    color: button8Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '1-3 month',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Carer Room ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xffadb5bd),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Does the property have a private bedroom for the carer?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton4(9),
                                    color: button9Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Yes',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffbbd0ff),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: MaterialButton(
                                    onPressed: () => selectButton4(10),
                                    color: button10Color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'No',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff212529),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xffbbd0ff),
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: SizedBox(
                                        // width: 173,
                                        height: 50,
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          color: Colors.white,
                                          child: const Text(
                                            'Back',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xffbbd0ff),
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: SizedBox(
                                        // width: 173,
                                        height: 50,
                                        child: MaterialButton(
                                          onPressed: () {
                                            if (formKey.currentState!
                                                .validate()) {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const RequestCaregiver2()));
                                            }
                                          },
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          color: Colors.red,
                                          child: const Text(
                                            'Next',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
