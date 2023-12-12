import 'package:ecommerc_app2/constants.dart';
import 'package:flutter/material.dart';

class DontHaveAnAcount extends StatelessWidget {
  const DontHaveAnAcount({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.5)),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 20, color: appMainColor),
          ),
        ),
      ],
    );
  }
}
