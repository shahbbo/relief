import 'package:flutter/material.dart';

class ProfileCaregiver extends StatelessWidget {
  const ProfileCaregiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/caregiver.jpg'),
        ),
        Text(
          'mohamed ali',
          style: TextStyle(
            color: Color(0xFF212529),
            fontSize: 20,
            fontFamily: 'Barlow',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          ' I am a compassionate caregiver with over 5 years of experience, dedicated to providing personalized and empathetic care. ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFADB5BD),
            fontSize: 16,
            fontFamily: 'Barlow',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}