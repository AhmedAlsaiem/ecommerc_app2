import 'package:ecommerc_app2/constants.dart';
import 'package:ecommerc_app2/views/opt/opt_view.dart';
import 'package:ecommerc_app2/views/sigin_view/components/custom_text_form_field.dart';
import 'package:ecommerc_app2/views/sigin_view/components/sigin_custom_appbar.dart';
import 'package:ecommerc_app2/views/spelsh_screen.dart/components/custom_buttom.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false, // Add this line

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SiginCustomAppBar(
                    title: 'Sign Up',
                  ),
                  const SizedBox(height: 42),
                  const Text(
                    'Complete Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Complete your details or continue\n              with social media',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(height: 42),
                  CutomTextFormField(
                    onsave: (value) {},
                    hintText: 'Enter your frist name',
                    labeltext: 'Frist Name',
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 35),
                  CutomTextFormField(
                    hintText: 'Enter your last name',
                    labeltext: 'Last name',
                    icon: Icons.person,
                    onsave: (value) {},
                  ),
                  const SizedBox(height: 35),
                  CutomTextFormField(
                    onsave: (value) {
                      phoneNumber = value;
                    },
                    hintText: 'Enter your phone number',
                    labeltext: 'Phone Number',
                    icon: Icons.phone,
                  ),
                  const SizedBox(height: 35),
                  CutomTextFormField(
                    onsave: (value) {},
                    hintText: 'Enter your address',
                    labeltext: 'Enter Address',
                    icon: Icons.location_on_outlined,
                  ),
                  const SizedBox(height: 43),
                  CustomButtom(
                    title: 'Continue',
                    ontap: () {
                      formKey.currentState!.validate();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const OptVerificationView(
                          phoneNumber: '+201025113791',
                        );
                      }));
                    },
                  ),
                  const SizedBox(height: 42),
                  Text(
                    'By continuing your confirm that you agree\n              with our term and condition',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
