import 'package:flutter/material.dart';

class CustomHomeViewIcon extends StatelessWidget {
  const CustomHomeViewIcon({super.key, required this.icon});
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 176, 174, 174).withOpacity(0.1)),
      child: Center(
        child: Icon(
          icon,
          color: Colors.grey,
          weight: 10,
        ),
      ),
    );
  }
}
