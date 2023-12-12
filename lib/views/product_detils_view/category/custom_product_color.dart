import 'package:flutter/material.dart';

class CustomProductColor extends StatelessWidget {
  const CustomProductColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Color',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 12),
        CircleAvatar(
          radius: 11,
          backgroundColor: Colors.brown,
        ),
        SizedBox(width: 6),
        CircleAvatar(
          radius: 11,
          backgroundColor: Color(0xffbbada5),
        ),
        SizedBox(width: 6),
        CircleAvatar(
          radius: 11,
          backgroundColor: Color(0xff687154),
        )
      ],
    );
  }
}
