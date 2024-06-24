import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class elderNamePhoto extends StatelessWidget {
  const elderNamePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context).userDataPatient;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 361,
            height: 51,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // width: 148,
                        child: Text(
                          'Hello ${cubit?.userData?.userName ?? ''} ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '${inCareHeaderCubit.get(context).addressController.text}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF3E5C76),
                          fontSize: 14,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  backgroundImage: const NetworkImage(
                    'https://t3.ftcdn.net/jpg/03/29/17/78/360_F_329177878_ij7ooGdwU9EKqBFtyJQvWsDmYSfI1evZ.jpg',
                  ),
                  child: Text(
                    cubit?.userData?.userName?[0] ?? '',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                /*Container(
                  width: 50,
                  height: 50,
                  decoration: ShapeDecoration(
                  */ /*  image: DecorationImage(
                      image: AssetImage("asseets/Ellipse 1.png"),
                      fit: BoxFit.fill,
                    ),*/ /*
                    shape: OvalBorder(),
                  ),
                  child: Text(
                    cubit?.userData?.userName?[0] ?? '',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ),*/
              ],
            ),
          ),
        );
      },
    );
  }
}
