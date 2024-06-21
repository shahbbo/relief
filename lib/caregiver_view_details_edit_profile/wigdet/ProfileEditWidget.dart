import 'package:flutter/material.dart';

class ProfileEditWidget extends StatelessWidget {
  const ProfileEditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                        'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                  ),
                  IconButton(
                    onPressed: () async {},
                    icon:  CircleAvatar(
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
          onPressed: () async {},
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
  }
}
