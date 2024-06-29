import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/careGiverS/reviews.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class CareGiver extends StatefulWidget {
  CareGiver({super.key, required this.id});
  final String id;

  @override
  State<CareGiver> createState() => _CareGiverState();
}

class _CareGiverState extends State<CareGiver> {
  TextEditingController Day = TextEditingController();

  TextEditingController Month = TextEditingController();

  TextEditingController Hour = TextEditingController();

  TextEditingController Minute = TextEditingController();

  TextEditingController Days = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          inCareHeaderCubit()..getUserCaregiverById(id: widget.id),
      child: BlocConsumer<inCareHeaderCubit, headerState>(
        listener: (context, state) {
          if (state is PatientSpecificRequestsSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Your request has been sent successfully'),
              ),
            );

            Navigator.pop(context);
          } else if (state is PatientSpecificRequestsErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          var cubit = inCareHeaderCubit.get(context);
          return Scaffold(
            appBar: PreferredSize(
                preferredSize:
                    const Size.fromHeight(1.0), // here the desired height
                child: AppBar()),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: SizedBox(
                              height: 130,
                              width: double.infinity,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                color: Colors.grey[0],
                                margin: const EdgeInsets.all(0),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 55,
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: CircleAvatar(
                                      radius: 45,
                                      child: Text(
                                        cubit.getCaregiverById?.userName?[0] ??
                                            '',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      backgroundImage: NetworkImage(
                                          'https://t3.ftcdn.net/jpg/03/29/17/78/360_F_329177878_ij7ooGdwU9EKqBFtyJQvWsDmYSfI1evZ.jpg'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          cubit.getCaregiverById?.userName ?? '',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Caregiver,',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Specialist',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reviews(
                                        id: widget.id,
                                    )));
                          },
                          label: Text('   Reviews '),
                          icon: Icon(Icons.reviews),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide(
                                color: const Color(0xffbbd0ff),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            ImageIcon(AssetImage('asseets/MapPin.png')),
                            SizedBox(
                              width: 5,
                            ),
                            Text(cubit.addressCaregiver),
                            SizedBox(
                              width: 2,
                            ),
                            Text(''),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ImageIcon(AssetImage('asseets/phone.png')),
                            SizedBox(
                              width: 5,
                            ),
                            Text(cubit.getCaregiverById?.phone ?? ''),
                            SizedBox(
                              width: 2,
                            ),
                            Text(''),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 345,
                          height: 48,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFFFFC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Image.asset('asseets/smoker.png'),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                cubit.getCaregiverById?.doYouSmoke
                                        ?.toString() ??
                                    '',
                                style: TextStyle(
                                  color: Color(0xFF3E5C76),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 345,
                          height: 48,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFFFFC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Image.asset('asseets/candrive.png'),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                cubit.getCaregiverById?.canYouDrive
                                        ?.toString() ??
                                    '',
                                style: TextStyle(
                                  color: Color(0xFF3E5C76),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 345,
                          height: 48,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFFFFC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Image.asset('asseets/gender.png'),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                cubit.getCaregiverById?.gender?.toString() ??
                                    '',
                                style: TextStyle(
                                  color: Color(0xFF3E5C76),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Biography',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' ${cubit.getCaregiverById?.biography ?? ''}',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff343a40),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          // width: 265,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return SingleChildScrollView(
                                      child: AlertDialog(
                                        content: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Spacer(),
                                                  IconButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    icon: Icon(Icons.close),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: Text(
                                                  'Day',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                height: 55,
                                                width: 300,
                                                child: TextFormField(
                                                  controller: Day,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: 'Day',
                                                      labelStyle: TextStyle(
                                                          color: Color(
                                                              0xffADB5BD)),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0, top: 8.0),
                                                child: Text(
                                                  'Month',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                height: 55,
                                                width: 300,
                                                child: TextFormField(
                                                  controller: Month,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: 'Month',
                                                      labelStyle: TextStyle(
                                                          color: Color(
                                                              0xffADB5BD)),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      )),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Hour',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(
                                                    flex: 1,
                                                  ),
                                                  const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Minutes',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                ],
                                              ),
                                              const SizedBox(height: 12),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 115,
                                                    child: TextFormField(
                                                      controller: Hour,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                              labelText: '00',
                                                              labelStyle: TextStyle(
                                                                  color: Color(
                                                                      0xffADB5BD)),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide: const BorderSide(
                                                                    width: 1,
                                                                    color: Color(
                                                                        0xffBBD0FF)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide: const BorderSide(
                                                                    width: 1,
                                                                    color: Color(
                                                                        0xffBBD0FF)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                              )),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    width: 115,
                                                    child: TextFormField(
                                                      controller: Minute,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                              labelText: '00',
                                                              labelStyle: TextStyle(
                                                                  color: Color(
                                                                      0xffADB5BD)),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide: const BorderSide(
                                                                    width: 1,
                                                                    color: Color(
                                                                        0xffBBD0FF)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide: const BorderSide(
                                                                    width: 1,
                                                                    color: Color(
                                                                        0xffBBD0FF)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                              )),
                                                    ),
                                                  ),
                                                  Spacer(
                                                    flex: 3,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0, top: 8),
                                                child: Text(
                                                  'Determine the period of service',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                height: 55,
                                                width: 300,
                                                child: TextFormField(
                                                  controller: Days,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText:
                                                          'The Number Of Days',
                                                      labelStyle: TextStyle(
                                                          color: Color(
                                                              0xffADB5BD)),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                width: 1,
                                                                color: Color(
                                                                    0xffBBD0FF)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                      )),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Center(
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    cubit
                                                        .patientSpecificRequests(
                                                            id: widget.id,
                                                            day: int.parse(
                                                                Day.text),
                                                            month: int.parse(
                                                                Month.text),
                                                            hours: int.parse(
                                                                Hour.text),
                                                            minutes: int.parse(
                                                                Minute.text),
                                                            amount: int.parse(
                                                                Days.text));
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                    backgroundColor:
                                                        const Color(0xffD90429),
                                                  ),
                                                  child: const Text(
                                                    '  Submit  ',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            color: const Color(0xFFD90429),
                            child: const Text(
                              'Book Appointment',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
