import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:relief/cubits/incareCubit/inCareCubit.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key, required this.id, required this.role});
  final String id;
  final String role;
  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {

  double ratings = 0 ;

  TextEditingController  messageController = TextEditingController() ;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<inCareHeaderCubit, headerState>(
      listener: (context, state) {
        if (state is MakeRatingSuccessState ||
            state is MakePublicRatingSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Rating Added Successfully'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pop(context);
        } else if (state is MakeRatingErrorState ||
            state is MakePublicRatingErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Request Has Been Reviewed Before'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        var cubit = inCareHeaderCubit.get(context);
        return Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(40.0),
              // here the desired height
              child: AppBar(
                title: const Text(
                  'Add Reviews',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
          body: ModalProgressHUD(
            inAsyncCall: state is MakeRatingLoadingState,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Tap To Rate',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff212529)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return Icon(
                              Icons.sentiment_very_dissatisfied,
                              color: Colors.red,
                            );
                          case 1:
                            return Icon(
                              Icons.sentiment_dissatisfied,
                              color: Colors.redAccent,
                            );
                          case 2:
                            return Icon(
                              Icons.sentiment_neutral,
                              color: Colors.amber,
                            );
                          case 3:
                            return Icon(
                              Icons.sentiment_satisfied,
                              color: Colors.lightGreen,
                            );
                          case 4:
                            return Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.green,
                            );
                          default:
                            return Container();
                        }
                      },
                      onRatingUpdate: (rating) {
                        setState(() {
                          ratings = rating;
                        });

                      },
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Tell Us More (Optional)',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff212529)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Form(
                      key: formKey,
                      child: TextFormField(
                        controller: messageController,
                        maxLines: null,
                        textAlignVertical: TextAlignVertical.top,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Why This Rate?',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    const Text(
                      'Note:Your review helps us to improve your experince',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6c757d),
                      ),
                    ),
                    const SizedBox(
                      height: 340,
                    ),
                    SizedBox(
                      width: 265,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          if (formKey.currentState!.validate() &&
                              widget.role == 'specific') {
                            cubit.makeRating(
                              id: widget.id,
                              rating: ratings.toInt(),
                              messageRating: messageController.text,
                            );
                          } else if (formKey.currentState!.validate() &&
                              widget.role == 'public') {
                            cubit.makePublicRating(
                              id: widget.id,
                              rating: ratings.toInt(),
                              messageRating: messageController.text,
                            );
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: const Color(0xFF212529),
                        child: const Text(
                          'Submit Review',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
