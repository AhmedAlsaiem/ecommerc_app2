import 'package:flutter/material.dart';

class CutomTextFormField extends StatelessWidget {
  const CutomTextFormField(
      {super.key,
      required this.hintText,
      required this.labeltext,
      required this.icon,
      required this.onsave});
  final String hintText, labeltext;
  final IconData? icon;
  final void Function(String?)? onsave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: labeltext == 'Phone Number'
          ? TextInputType.number
          : TextInputType.name,
      obscureText: labeltext == 'Password' || labeltext == 'Confirm Password'
          ? true
          : false,
      validator: (value) {
        if (value!.isEmpty) {
          return '$labeltext is required';
        } else {
          if (labeltext == 'Email' && value.length >= 11) {
            if (value.substring(value.length - 10, value.length) !=
                '@gmail.com') {
              return 'this $labeltext is not correct';
            } else {
              return null;
            }
          } else if (value.length <= 6 && labeltext == 'Password') {
            return 'this Password is short';
          } else if (labeltext == 'Email' && value.length <= 10) {
            return 'this $labeltext is not correct';
          } else {
            return null;
          }
        }
      },
      onChanged: onsave,
      decoration: InputDecoration(
        suffixIcon: Icon(
          icon,
          color: Colors.black.withOpacity(0.4),
          weight: 0.25,
        ),
        contentPadding: const EdgeInsets.only(left: 35, top: 22, bottom: 22),
        hintText: hintText,
        labelText: labeltext,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(color: Colors.grey)),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
