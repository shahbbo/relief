import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/components/navBar.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/elderApp.dart';
import 'package:relief/shared/bloc_observer.dart';
import 'package:relief/sittings/detailesScreen/Aboutdetailes.dart';
import 'package:relief/sittings/detailesScreen/Paymentdetailes.dart';
import 'package:relief/sittings/detailesScreen/changepassworddetails.dart';
import 'caregiver_view_details_edit_profile/caregiver_view_details_edit_profile_view.dart';
import 'package:relief/carerApp.dart';

void main() {
  runApp(const relief());
  Bloc.observer = MyBlocObserver();
}

class relief extends StatelessWidget {
  const relief({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inCareHeaderCubit(),
      child: BlocConsumer<inCareHeaderCubit, headerState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: 'Barlow-Regular',
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routes: {
              PaymentDetailes.id: (context) => PaymentDetailes(),
              changepassworddetails.id: (context) => changepassworddetails(),
              Aboutdetailes.id: (context) => Aboutdetailes(),
              //  seamanEdit.id:(context) => seamanEdit(),
            },
            debugShowCheckedModeBanner: false,
            // home: AnimatedSplashScreen(
            //     duration: 5000,
            //     splashIconSize: 220,
            //     splash: Image.asset('asseets/logo.png',
            //     fit: BoxFit.cover,),
            //     nextScreen: logIn(),
            //     splashTransition: SplashTransition.fadeTransition,
            //     backgroundColor: Colors.white)
            home: elderApp(),
            // home: CaregiverViewDetailsEditProfileView(),
          );
        },
      ),
    );
  }
}
