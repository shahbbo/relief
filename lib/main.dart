import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:relief/carerApp.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/elderApp.dart';
import 'package:relief/register/logInScreen.dart';
import 'package:relief/shared/bloc_observer.dart';
import 'package:relief/shared/network/local/cache_helper.dart';
import 'package:relief/shared/network/remote/dio_helper.dart';
import 'package:relief/sittings/detailesScreen/Aboutdetailes.dart';
import 'package:relief/sittings/detailesScreen/Paymentdetailes.dart';
import 'package:relief/sittings/detailesScreen/changepassworddetails.dart';

Future<void> main() async {
  runApp(const relief());
  Bloc.observer = MyBlocObserver();
  await DioHelper.inti();
  await CacheHelper.init();

  Location location =  Location();

  bool serviceEnabled;
  PermissionStatus permissionGranted;


  try{
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
  }catch(e){
    print(e.toString());
  }

  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return;
    }
  }
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
            home: LoginScreen(),
            // home: carerApp(),
            // home: elderApp(),
          );
        },
      ),
    );
  }
}
