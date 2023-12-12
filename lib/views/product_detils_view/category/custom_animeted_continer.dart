import 'package:flutter/material.dart';

class CustomAnimatedContiner extends StatelessWidget {
  const CustomAnimatedContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 9,
      left: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) {
          return AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black.withOpacity(0.4),
              ),
              height: 7,
              margin: const EdgeInsets.only(right: 5),
              width: 0 == index ? 20 : 8,
              duration: const Duration(milliseconds: 200));
        }),
      ),
    );
  }
}
