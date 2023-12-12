import 'package:ecommerc_app2/constants.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.title, this.ontap});
  final String title;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        decoration: BoxDecoration(
          color: appMainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 60,
        width: 365,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
