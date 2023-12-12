import 'package:ecommerc_app2/views/sigin_view/components/custom_text_form_field.dart';
import 'package:ecommerc_app2/views/sigin_view/components/dont_have_acount.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_custom_appbar.dart';
import 'package:ecommerc_app2/views/sign_up_view/sign_up_view.dart';
import 'package:ecommerc_app2/views/spelsh_screen.dart/components/custom_buttom.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SiginCustomAppBar(
              title: 'Forgot Password',
            ),
            const Spacer(flex: 1),
            const Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Please enter your email and we will send \n        you a link to return to your acount',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            CutomTextFormField(
              onsave: (value) {},
              hintText: 'Enter your Email',
              labeltext: 'Email',
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 40),
            const Spacer(),
            const SizedBox(width: 35),
            const SizedBox(
              height: 35,
            ),
            const CustomButtom(title: 'Continue'),
            const Spacer(flex: 1),
            const SizedBox(height: 20),
            DontHaveAnAcount(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpView();
                }));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Spacer(flex: 3),
          ],
        ),
      )),
    );
  }
}
