import 'package:flutter/material.dart';

class SpacialForYouRow extends StatelessWidget {
  const SpacialForYouRow({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.black.withOpacity(0.9), fontSize: 20),
        ),
        Text(
          'See More',
          style: TextStyle(color: Colors.black.withOpacity(0.2), fontSize: 14),
        )
      ],
    );
  }
}
