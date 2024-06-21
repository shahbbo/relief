import 'package:flutter/material.dart';
import 'package:relief/sittings/widgets/contentContainer.dart';

void main() {
  runApp(const sittingSS());
}

class sittingSS extends StatelessWidget {
  const sittingSS({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Settings ',
            style: TextStyle(fontSize: 22, fontFamily: 'Barlow-SemiBold'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Account ',
            style: TextStyle(fontSize: 22, fontFamily: 'Barlow-SemiBold'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            width: 361,
            decoration: BoxDecoration(
                color: Color(0xffF6F3EF),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                contentContainer(
                  text: 'Change password',
                  prefixicon: Icons.lock_outline,
                  endicon: Icons.arrow_forward_ios,
                  colortext: Colors.black,
                  coloricon: Color(0xff343A40),
                  onpressed: () {
                    Navigator.pushNamed(context, 'changepassworddetails');
                  },
                ),
                Divider(
                  color: Color.fromARGB(105, 158, 158, 158),
                ),
                contentContainer(
                  text: 'Payment',
                  prefixicon: Icons.credit_card,
                  endicon: Icons.arrow_forward_ios,
                  coloricon: Color(0xff343A40),
                  colortext: Colors.black,
                  onpressed: () {
                    Navigator.pushNamed(context, 'PaymentDetailes');
                  },
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Preferences & Advanced ',
            style: TextStyle(fontSize: 22, fontFamily: 'Barlow-SemiBold'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
            width: 361,
            decoration: BoxDecoration(
                color: Color(0xffF6F3EF),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                contentContainer(
                  text: 'Notifications',
                  prefixicon: Icons.notifications_none_rounded,
                  endicon: Icons.toggle_off_outlined,
                  coloricon: Color(0xff343A40),
                  colortext: Colors.black,
                ),
                Divider(
                  color: Color.fromARGB(105, 158, 158, 158),
                ),
                contentContainer(
                  text: 'About',
                  prefixicon: Icons.contact_support_outlined,
                  endicon: Icons.arrow_forward_ios,
                  colortext: Colors.black,
                  coloricon: Color(0xff343A40),
                  onpressed: () {
                    Navigator.pushNamed(context, 'Aboutdetailes');
                  },
                ),
                Divider(
                  color: Color.fromARGB(105, 158, 158, 158),
                ),
                contentContainer(
                  text: 'Log Out',
                  prefixicon: Icons.logout_sharp,
                  endicon: Icons.arrow_forward_ios,
                  coloricon: Color(0xffD9163A),
                  colortext: Color(0xffD9163A),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
