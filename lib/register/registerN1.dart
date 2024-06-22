import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';
import 'package:relief/register/logInScreen.dart';
import 'package:relief/register/registerN2.dart';

class RegisterN1 extends StatefulWidget {
  const RegisterN1({super.key});

  @override
  State<RegisterN1> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterN1> {
  bool _obscureText = true;
  var dropdownvalue = "10";
  Location location = Location();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoadingPlace,
          color: Colors.transparent,
          progressIndicator: const CircularProgressIndicator(
            color: Colors.red,
          ),
          child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Create New Account',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              body: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: SingleChildScrollView(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [],
                                ),
                                const Text(
                                  'Username',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Name',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Email Address',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Email Address',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Password',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  obscureText: _obscureText,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                    hintText: 'Enter Your Password',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  obscureText: _obscureText,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                    hintText: 'Retype The Password',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Phone Number',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    labelText: '+02',
                                    hintText: 'Enter Your Phone Number',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Location',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                /*  DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        value: dropdownvalue,
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem(
                            value: "8",
                            child: Text("Cairo"),
                          ),
                          DropdownMenuItem(
                            value: "1",
                            child: Text("Alexandria"),
                          ),
                          DropdownMenuItem(
                            value: "2",
                            child: Text("Ismailia"),
                          ),
                          DropdownMenuItem(
                            value: "3",
                            child: Text("Suez"),
                          ),
                          DropdownMenuItem(
                            value: "4",
                            child: Text("PortSaid"),
                          ),
                          DropdownMenuItem(
                            value: "5",
                            child: Text("Sohag"),
                          ),
                          DropdownMenuItem(
                            value: "6",
                            child: Text("Aswan"),
                          ),
                          DropdownMenuItem(
                            value: "7",
                            child: Text("Damitta"),
                          ),
                          DropdownMenuItem(
                            value: "10",
                            child: Text(
                                style: TextStyle(
                                  color: Color(0xFF494C56),
                                ),
                                "Tap To Select Your Location"),
                          ),
                        ],
                        onChanged: (v) {}),*/
                                TextFormField(
                                  controller: inCareHeaderCubit.get(context).addressController,
                                  keyboardType: TextInputType.streetAddress,
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: '',
                                    suffixIcon: IconButton(
                                      icon: const Icon(
                                          Icons.location_searching_sharp),
                                      onPressed: () async {
                                        LocationData locationData;
                                        locationData = await location.getLocation();
                                        inCareHeaderCubit.get(context).getPlace(
                                            lat: locationData.latitude,
                                            lon: locationData.longitude,
                                        );
                                      },
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 256.0,
                                      height: 1.0,
                                      color: Colors.black, // Line color
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (
                                                  context) => const RegisterN2()));
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    color: const Color(0xFFB91A13),
                                    child: const Text(
                                      'Next',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Already Have An Account?',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (
                                                      context) => const LoginScreen()));
                                        },
                                        child: const Text(
                                          'Log In',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ))
                                  ],
                                ),
                                const SizedBox(height: 30),
                              ]))))),
        );
      },
    );
  }
}
