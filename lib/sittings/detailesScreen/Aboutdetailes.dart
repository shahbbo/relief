// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:relief/sittings/widgets/Question.dart';

class Aboutdetailes extends StatelessWidget {
  const Aboutdetailes({super.key});

  static String id = 'Aboutdetailes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Question(
                text:
                    'We understand every care story is personal, because ours is no different.',
                answer:
                    'The elder care system is a crucial component of any society, reflecting its values and commitments to its older population. As demographics shift towards an aging population globally, the importance of robust elder care systems becomes increasingly evident. These systems encompass a wide range of services and support mechanisms designed to ensure the well-being, dignity, and quality of life of elderly individuals.',
              ),
              SizedBox(
                height: 19,
              ),
              Question(
                text: 'Our Mission',
                answer:
                    'Our mission is to reinvent what it means to age. To change conversations and perceptions, so that getting older doesn’t mean giving up choice, independence, or the things that make us who we are.',
              ),
              SizedBox(
                height: 20,
              ),
              Question(
                text: 'Seeking Excellence',
                answer:
                    'We’\re always seeking excellence - We raise the bar, break the mould, and commit to solving complex problems for customers, caregivers, and partners.',
              ),
              SizedBox(
                height: 20,
              ),
              Question(
                text: 'Together',
                answer:
                    'We do this by coming together. We’re powered by insight, ambition and purpose. We work together at pace, and ensure everyone has a voice.',
              ),
              SizedBox(
                height: 20,
              ),
              Question(
                text: 'Change Society',
                answer:
                    'And, we’re passionate about supporting people in their own homes as they age. We value those who care, and we’re working to change society for the better.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
