import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/bloc_obv.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

import 'caregiver_view_details_edit_profile/caregiver_view_details_edit_profile_view.dart';

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
            debugShowCheckedModeBanner: false,
            // home: AnimatedSplashScreen(
            //     duration: 5000,
            //     splashIconSize: 220,
            //     splash: Image.asset('asseets/logo.png',
            //     fit: BoxFit.cover,),
            //     nextScreen: logIn(),
            //     splashTransition: SplashTransition.fadeTransition,
            //     backgroundColor: Colors.white)

        /*    home: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: inCareHeaderCubit.get(context).mainScreens[inCareHeaderCubit.get(context).currentIndex],
                    ),
                    // Spacer(flex: 1),
                    Center(child: navBar()),
                    SizedBox(height: 10),
                    // Spacer(flex: 1),
                  ],
                ),
              ),
            ),*/

            home: CaregiverViewDetailsEditProfileView(),
          );
        },
      ),
    );
  }
}
