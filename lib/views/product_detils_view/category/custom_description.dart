import 'package:flutter/material.dart';

class CustomDecreption extends StatelessWidget {
  const CustomDecreption({
    super.key, required this.name, required this.price,
  });
final String name;
final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              'Descripion',
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 18,
              ),
            ),
          ],
        ),
        Text(
          '\$${price}',
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 36,
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
