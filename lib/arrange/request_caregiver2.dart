import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relief/arrange/cubit/requests_cubit.dart';

class RequestCaregiver2 extends StatefulWidget {
  const RequestCaregiver2({super.key});

  @override
  State<RequestCaregiver2> createState() => _HomeState();
}

class _HomeState extends State<RequestCaregiver2> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Color button1Color = Colors.white;
  Color button2Color = Colors.white;
  Color button3Color = Colors.white;
  Color button4Color = Colors.white;
  Color button5Color = Colors.white;
  Color button6Color = Colors.white;
  Color button7Color = Colors.white;

  TextEditingController carerGender = TextEditingController();
  TextEditingController smoker = TextEditingController();
  TextEditingController driver = TextEditingController();
  TextEditingController periodOfService = TextEditingController();
  TextEditingController day = TextEditingController();
  TextEditingController month = TextEditingController();
  TextEditingController time = TextEditingController();
  TextEditingController hour = TextEditingController();
  TextEditingController minutes = TextEditingController();

  void selectButton(int buttonNumber) {
    setState(() {
      if (buttonNumber == 1) {
        button1Color = Color(0xffbbd0ff);
        button3Color = Colors.white;
        button4Color = Colors.white;
        carerGender.text = 'male';
      } else if (buttonNumber == 2) {
        button1Color = Colors.white;
        button2Color = Color(0xffbbd0ff);
        button3Color = Colors.white;
        carerGender.text = 'female';
      } else if (buttonNumber == 3) {
        button1Color = Color(0xffbbd0ff);
        button2Color = Colors.white;
        button3Color = Colors.white;
        carerGender.text = 'no preference';
      }
    });
  }

  void selectButton2(int buttonNumber) {
    setState(() {
      if (buttonNumber == 4) {
        button4Color = Color(0xffbbd0ff);
        button5Color = Colors.white;
        smoker.text = 'yes';
      } else if (buttonNumber == 5) {
        button4Color = Colors.white;
        button5Color = Color(0xffbbd0ff);
        smoker.text = 'no';
      }
    });
  }

  void selectButton3(int buttonNumber) {
    setState(() {
      if (buttonNumber == 5) {
        button5Color = Color(0xffbbd0ff);
        button6Color = Colors.white;
        driver.text = 'yes';
      } else if (buttonNumber == 6) {
        button5Color = Colors.white;
        button6Color = Color(0xffbbd0ff);
        driver.text = 'no';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('   '),
      ),
      body: Form(
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
                      'Care preferences',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xffadb5bd),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Fill in your preferences and share your care request.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  'Do you have any preference on the gender of their carer?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
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
                      onPressed: () => selectButton(3),
                      color: button3Color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'No Preference',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
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
                      'Would you accept a carer who smokes?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Yes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'No',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
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
                      'Do you need a carer that can drive?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Yes',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'No',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Detrmine The Period Of Care',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffbbd0ff),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                    controller: periodOfService,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter The Number Of Days',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Color(0xffbbd0ff)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Appointment Date',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xffadb5bd),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Day',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffbbd0ff),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                    controller: day,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'DD',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Color(0xffbbd0ff)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Month',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffbbd0ff),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                    controller: month,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'MM',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Color(0xffbbd0ff)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Hour',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Minutes',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffbbd0ff),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        controller: hour,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: '00',
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Color(0xffbbd0ff)),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffbbd0ff),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        controller: minutes,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: '00',
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'What Is Your Full Home Address?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffbbd0ff),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Address',
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '*Note:by clicking Send Request your agree that : '
                  'No cameras are located in the carer\'s sleeping area or private spaces like bathrooms',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Color(0xff212529)),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        // width: 173,
                        height: 50,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: const BorderSide(
                              color: Color(0xffbbd0ff),
                            ),
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
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffbbd0ff),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          // width: 173,
                          height: 50,
                          child: MaterialButton(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                RequestsCubit.of(context).publicRequest(
                                  HowManyPeopleAreYouArrangingCareFor:
                                      RequestsCubit.of(context)
                                          .numberElders
                                          .text,
                                  HowManyWeeksOfCareAreRequired:
                                      RequestsCubit.of(context).weeksCare.text,
                                  WhenWouldYouLikeTheCareToStart:
                                      RequestsCubit.of(context).startDate.text,
                                  DoesThePropertyHaveAPrivateBedroomForTheCarer:
                                      RequestsCubit.of(context).room.text,
                                  DoYouHaveAnyPreferenceOnTheGenderOfTheirCarer:
                                      carerGender.text,
                                  WouldYouAcceptACarerWhoSmokes: smoker.text,
                                  DoYouNeedACarerThatCanDrive: driver.text,
                                  day: day.text,
                                  month: month.text,
                                  hours: hour.text,
                                  minutes: minutes.text,
                                  amount: periodOfService.text,
                                  unit: 'days',
                                );
                              }
                            },
                            child: const Text(
                              'Send Request',
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
    );
  }
}
