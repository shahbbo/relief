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
          padding: const EdgeInsets.all(3),
          child: Container(
            width: 361,
            height: 80,
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
                            fontSize: 17,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 50,
                        width: 270,
                        child: Text.rich(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          TextSpan(
                            text:
                                '${inCareHeaderCubit.get(context).addressController.text}',
                            style: TextStyle(
                              color: Color(0xFF3E5C76),
                              fontSize: 12,
                              fontFamily: 'Barlow',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: cubit?.userData
                        ?.profilePhoto !=
                        null
                        ? NetworkImage(cubit?.userData
                        ?.profilePhoto
                        .toString() ??
                        '')
                        : const NetworkImage(
                      'https://t3.ftcdn.net/jpg/03/29/17/78/360_F_329177878_ij7ooGdwU9EKqBFtyJQvWsDmYSfI1evZ.jpg',
                    ),
                    child: cubit?.userData
                        ?.profilePhoto !=
                        null
                        ? null
                        : Text(
                      cubit?.userData
                          ?.userName?[0]
                          .toUpperCase() ??
                          '',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
