import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:relief/caregiver_view_details_edit_profile/ChangePass.dart';

import '../../cubits/incareCubit/inCareCubit.dart';
import '../../shared/components/constants.dart';

class ProfileEditWidget extends StatefulWidget {
  const ProfileEditWidget({super.key});

  @override
  State<ProfileEditWidget> createState() => _ProfileEditWidgetState();
}

class _ProfileEditWidgetState extends State<ProfileEditWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    singOut(context);
                  },
                  icon: Icon(
                    Icons.logout_outlined,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      if (cubit.newPostImage != null)
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: FileImage(cubit.newPostImage!),
                          ),
                        ),
                      if (cubit.newPostImage == null)
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: cubit.userDataCaregiver?.userData
                                        ?.profilePhoto !=
                                    null
                                ? NetworkImage(cubit.userDataCaregiver?.userData
                                        ?.profilePhoto
                                        .toString() ??
                                    '')
                                : const NetworkImage(
                                    'https://t3.ftcdn.net/jpg/03/29/17/78/360_F_329177878_ij7ooGdwU9EKqBFtyJQvWsDmYSfI1evZ.jpg',
                                  ),
                            child: cubit.userDataCaregiver?.userData
                                        ?.profilePhoto !=
                                    null
                                ? null
                                : Text(
                                    cubit.userDataCaregiver?.userData
                                            ?.userName?[0]
                                            .toUpperCase() ??
                                        '',
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.red,
                                    ),
                                  ),
                          ),
                        ),
                      IconButton(
                        onPressed: () async {
                          inCareHeaderCubit
                              .get(context)
                              .getNewPostImage(ImageSource.gallery);
                          await showAdaptiveDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: const Color(0xff410000),
                                  title: Center(
                                      child: Text(
                                    'Are you sure you want to change your profile picture?',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )),
                                  actions: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              cubit.discardChange();
                                              cubit.newPostImage = null;
                                            });
                                            cubit.newPostImage = null;
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Discard Change',
                                            style: const TextStyle(
                                                color: Colors.red),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            inCareHeaderCubit.get(context).carerEditProfile(
                                                name: cubit.userDataCaregiver?.userData?.userName ?? '',
                                                email: cubit.userDataCaregiver?.userData?.email ?? '',
                                                biography: cubit.userDataCaregiver?.userData?.biography ?? '',
                                                image: cubit.newPostImage,
                                                phone: cubit.userDataCaregiver?.userData?.phone ?? ''
                                            );
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Change',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              });
                        },
                        icon: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 20,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePasswCarer(),
                  ),
                );
              },
              child: Text(
                'Change Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF00B4D8),
                  fontSize: 16,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
