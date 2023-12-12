import 'package:ecommerc_app2/views/homw_view/home_view.dart';
import 'package:ecommerc_app2/views/opt/custom_opt_verificationtextfield.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_custom_appbar.dart';
import 'package:ecommerc_app2/views/spelsh_screen.dart/components/custom_buttom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OptVerificationView extends StatefulWidget {
  const OptVerificationView(
      {super.key,
      required this.phoneNumber,
    });
  final String phoneNumber;

  @override
  State<OptVerificationView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<OptVerificationView> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool focus = true;
  bool value = false;
  late String verId = '';
  late String t1, t2, t3, t4, t5, t6;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Add this line

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SiginCustomAppBar(
                  title: 'OTP Verification',
                ),
                const Spacer(flex: 1),
                const Text(
                  'OTP Verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '    We sent your code to +1\nthis code will expired in 00.0',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                const Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CutomOptVerificationTextField(
                      onchange: (value) {
                        focus = true;

                        t1 = value;
                        //     print('$var1 is the adfasdfafafdfasdfadfadf');
                        if (focus != false && value.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    CutomOptVerificationTextField(
                      onchange: (value) {
                        focus = true;

                        t2 = value;
                        //     print('$var1 is the adfasdfafafdfasdfadfadf');
                        if (focus != false && value.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    CutomOptVerificationTextField(
                      onchange: (value) {
                        t3 = value;
                        focus = true;
                        //     print('$var1 is the adfasdfafafdfasdfadfadf');
                        if (focus != false && value.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    CutomOptVerificationTextField(
                      onchange: (value) {
                        t4 = value;
                        focus = true;

                        //     print('$var1 is the adfasdfafafdfasdfadfadf');
                        if (focus != false && value.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    CutomOptVerificationTextField(
                      onchange: (value) {
                        t5 = value;
                        focus = true;

                        //     print('$var1 is the adfasdfafafdfasdfadfadf');
                        if (focus != false && value.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                    CutomOptVerificationTextField(
                      onchange: (value) {
                        t6 = value;
                        focus = false;

                        //     print('$var1 is the adfasdfafafdfasdfadfadf');
                        if (focus != false && value.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                CustomButtom(
                  title: 'Continue',
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductHome();
                    }));
                  },
                ),
                const Spacer(),
                Text(
                  'Resend Otp Code ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
