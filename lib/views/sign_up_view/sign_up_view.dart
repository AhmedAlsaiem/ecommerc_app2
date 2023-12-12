import 'package:ecommerc_app2/constants.dart';
import 'package:ecommerc_app2/cubits/login_signup_cubit/login_signup_cubit.dart';
import 'package:ecommerc_app2/cubits/login_signup_cubit/login_signup_state.dart';
import 'package:ecommerc_app2/views/sigin_view/components/custom_text_form_field.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_custom_appbar.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_row_options.dart';
import 'package:ecommerc_app2/views/sign_up_view/complete_progfile.dart';
import 'package:ecommerc_app2/views/spelsh_screen.dart/components/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:loading_animation_widget/loading_animation_widget.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? email;
  bool x = true;
  String? password;

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Add this line

      backgroundColor: Colors.white,
      body: BlocListener<LoginCubit, LoginCubitState>(
          listener: (context, state) {
            if (state is! LoginCubitSucessState) {
              x = false;
              setState(() {});
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CompleteProfile();
              }));
              setState(() {
                x = true;
              });
            }
          },
          child: x == true
              ? SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const SiginCustomAppBar(
                            title: 'Sign Up',
                          ),
                          const Spacer(flex: 1),
                          const Text(
                            'Register Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Complete your details or continue\n              with social media',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          CutomTextFormField(
                            onsave: (value) {
                              email = value;
                            },
                            hintText: 'Enter your Email',
                            labeltext: 'Email',
                            icon: Icons.email_outlined,
                          ),
                          const SizedBox(height: 30),
                          CutomTextFormField(
                            hintText: 'Enter your password',
                            labeltext: 'Password',
                            icon: Icons.lock_outline,
                            onsave: (value) {
                              password = value;
                            },
                          ),
                          const SizedBox(height: 30),
                          CutomTextFormField(
                            onsave: (value) {},
                            hintText: 'Re-enter your password',
                            labeltext: 'Confirm Password',
                            icon: Icons.lock_outline,
                          ),
                          const Spacer(),
                          const SizedBox(height: 35),
                          CustomButtom(
                              title: 'Continue',
                              ontap: () {
                                if (formKey.currentState!.validate()) {
                                  BlocProvider.of<LoginCubit>(context)
                                      .addUserEmailAndPasswordF(
                                          email!, password!);
                                }
                              }),
                          const Spacer(flex: 1),
                          const SizedBox(height: 35),
                          const SiginRowOptions(),
                          const SizedBox(height: 20),
                          Text(
                            'By continuing your confirm that you agree\n              with our term and condition',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          const Spacer(flex: 3),
                        ],
                      ),
                    ),
                  ),
                )
              : const SafeArea(
                  child: Center(
                      child: SpinKitThreeInOut(
                    color: Colors.orange,
                    size: 50.0,
                  )),
                )),
    );
  }

  void showSnankBarMethod(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: appMainColor,
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.startToEnd,
      ),
    );
  }
}
