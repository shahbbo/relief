import 'package:flutter/material.dart';

import '../network/local/cache_helper.dart';

void singOut(context) {
  CacheHelper.clearData(key: 'ID').then((value) {
    CacheHelper.clearData(key: 'TokenId');
/*    if (value == true) {
       HomeCubit.get(context).userData = UserData(name: 'name', email: 'email',
           address: 'address', weight: 0, height: 0,gender: '',
           phone: 'phone', id: 'id', photo: '', wishlist: []);
      navigateFish(context, const SignInScreen()); // add Login Screen here because singOut and login again
      debugPrint("token inside clear data : $token uid : $uid");
    }*/
  });

/*  if (token != null || uid != null) {
    token = null;
    uid = null;
    debugPrint("token in side if condition: $token uid : $uid");
  }
  debugPrint('token : $token');
  debugPrint('uid: $uid');*/
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

