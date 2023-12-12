import 'package:ecommerc_app2/views/shopping_card.dart/category/custom_botton.dart';
import 'package:flutter/material.dart';

class OrderProductWidget extends StatefulWidget {
  const OrderProductWidget({
    super.key,
  });

  @override
  State<OrderProductWidget> createState() => _OrderProductWidgetState();
}

class _OrderProductWidgetState extends State<OrderProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: const SizedBox(
            height: 20,
            child: Text(
              'Cancle',
              style: TextStyle(
                color: Color.fromARGB(255, 99, 98, 98),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        CustomBottom(
          title: 'place Order',
          //  color: Colors.orange,
        ),
      ],
    );
  }
}
