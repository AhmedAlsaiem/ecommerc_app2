import 'package:ecommerc_app2/constants.dart';
import 'package:ecommerc_app2/cubits/login_signup_cubit/login_signup_cubit.dart';
import 'package:ecommerc_app2/cubits/login_signup_cubit/login_signup_state.dart';
import 'package:ecommerc_app2/views/homw_view/home_view.dart';
import 'package:ecommerc_app2/views/sigin_view/components/custom_text_form_field.dart';
import 'package:ecommerc_app2/views/sigin_view/components/dont_have_acount.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_custom_appbar.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_row_options.dart';
import 'package:ecommerc_app2/views/sigin_view/forget_password_view.dart';
import 'package:ecommerc_app2/views/sign_up_view/sign_up_view.dart';
import 'package:ecommerc_app2/views/spelsh_screen.dart/components/custom_buttom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SiginView extends StatefulWidget {
  const SiginView({super.key});

  @override
  State<SiginView> createState() => _SiginViewState();
}

class _SiginViewState extends State<SiginView> {
  bool stat = false;
  String? email;
  String? password;
  GlobalKey<FormState> formKey = GlobalKey();
  bool x = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: BlocListener<LoginCubit, LoginCubitState>(
          listener: (context, state) {
            if (state is! LoginCubitSucessState) {
              x = false;
              setState(() {});
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ProductHome();
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
                            title: 'Sign in',
                          ),
                          const Spacer(flex: 1),
                          const Text(
                            'Welcome Back',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Sign in with your email and password \n        or continue with social media',
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
                            onsave: (value) {
                              password = value;
                            },
                            hintText: 'Enter your password',
                            labeltext: 'Password',
                            icon: Icons.lock_outline,
                          ),
                          const Spacer(),
                          const SizedBox(width: 35),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              GestureDetector(
                                onTap: () {
                                  if (stat == true) {
                                    stat = false;
                                  } else {
                                    stat = true;
                                  }
                                  setState(() {});
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 10),
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: stat == true
                                              ? Colors.white
                                              : Colors.black.withOpacity(0.4),
                                          width: 2),
                                      color: stat == true
                                          ? appMainColor
                                          : Colors.white),
                                  child: const Center(
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                'Remember me',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const ForgetPasswordScreen();
                                  }));
                                },
                                child: Text(
                                  'Forgot Passwords',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          CustomButtom(
                            title: 'Continue',
                            ontap: () async {
                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<LoginCubit>(context)
                                    .signEmailPassword(email!, password!);
                              }
                            },
                          ),
                          const Spacer(flex: 2),
                          const SiginRowOptions(),
                          const SizedBox(height: 20),
                          DontHaveAnAcount(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const SignUpView();
                              }));
                            },
                          ),
                          const Spacer(flex: 2),
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

  void signEmailPassword() async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email!,
          password: password!,
        );

        showSnankBarMethod('Login success');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          showSnankBarMethod('User not found');
        } else if (e.code == 'wrong-password') {
          showSnankBarMethod('Wrong Password');
        }
      } catch (e) {
        showSnankBarMethod('there are an error');
      }
    }
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
