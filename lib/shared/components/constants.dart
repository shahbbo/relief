import 'package:flutter/material.dart';
import 'package:relief/register/logInScreen.dart';

import '../network/local/cache_helper.dart';

void singOut(context) {
  CacheHelper.clearData(key: 'tokenPatient').then((value) {
    CacheHelper.clearData(key: 'tokenCaregiver');
    if (value == true) {
       /*HomeCubit.get(context).userData = UserData(name: 'name', email: 'email',
           address: 'address', weight: 0, height: 0,gender: '',
           phone: 'phone', id: 'id', photo: '', wishlist: []);*/
      navigateFish(context, const LoginScreen()); // add Login Screen here because singOut and login again
    }
  });

  if (tokenPatient != null || tokenCaregiver != null) {
   tokenPatient = null ;
   tokenCaregiver = null ;
  }
}

/*void navigateFish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (_) => widget,
    ),
    (route) => false);*/

void navigateFish(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    ),
        (route) => false,
  );
}

String? tokenPatient = CacheHelper.getData(key: 'tokenPatient');

String? tokenCaregiver = CacheHelper.getData(key: 'tokenCaregiver');

String? uid = CacheHelper.getData(key: 'ID');

bool? onBoarding = CacheHelper.getData(key: 'onBoarding');

bool? language = CacheHelper.getData(key: 'SettingsPage');

String? gov = CacheHelper.getData(key: 'gov');

