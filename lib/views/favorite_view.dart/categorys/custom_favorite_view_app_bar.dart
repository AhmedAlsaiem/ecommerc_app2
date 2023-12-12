import 'package:flutter/material.dart';

class CustomFavoriteViewAppBar extends StatelessWidget {
 const CustomFavoriteViewAppBar({
    super.key,
    required this.title,
  });
final  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
        SizedBox(
          width: 30,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
