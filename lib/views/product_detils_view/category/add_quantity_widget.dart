import 'package:flutter/material.dart';

class AddQuantityWidget extends StatefulWidget {
  const AddQuantityWidget({
    super.key,
  });

  @override
  State<AddQuantityWidget> createState() => _AddQuantityWidgetState();
}

class _AddQuantityWidgetState extends State<AddQuantityWidget> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Quantity',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: () {
            if (x > 0) {
              x--;
              setState(() {});
            }
          },
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.black,
            child: Center(
              child: Text(
                '-',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '$x',
          style: const TextStyle(color: Colors.black, fontSize: 22),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: () {
            x++;
            setState(() {});
          },
          child: const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.black,
            child: Center(
              child: Text(
                '+',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        )
      ],
    );
  }
}
