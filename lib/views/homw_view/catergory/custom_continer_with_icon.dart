import 'package:flutter/material.dart';

class CustomContinerWithIconAndTexfField extends StatelessWidget {
  const CustomContinerWithIconAndTexfField({
    super.key,
    required this.icon,
    required this.fristText,
    required this.lastText,
  });
  final IconData? icon;
  final String fristText;
  final String lastText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 57,
          width: 57,
          decoration: BoxDecoration(
              color: const Color(0xffffecdf),
              borderRadius: BorderRadius.circular(12)),
          child: Icon(
            icon,
            color: const Color(0xffff9771),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '$fristText\n $lastText',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black.withOpacity(0.7),
          ),
        )
      ],
    );
  }
}