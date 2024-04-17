import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/log in.dart';
import 'package:relief/homeScreen.dart';

void main() {
  runApp(const relief());
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
            debugShowCheckedModeBanner: false,
            // home: AnimatedSplashScreen(
            //     duration: 5000,
            //     splashIconSize: 220,
            //     splash: Image.asset('asseets/logo.png',
            //     fit: BoxFit.cover,),
            //     nextScreen: logIn(),
            //     splashTransition: SplashTransition.fadeTransition,
            //     backgroundColor: Colors.white)
            home: homeScreen(),
          );
        },
      ),
    );
  }
}
