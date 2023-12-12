import 'package:ecommerc_app2/constants.dart';
import 'package:ecommerc_app2/models/home_view_slider_model.dart';
import 'package:flutter/material.dart';

class HomeViewSlider extends StatelessWidget {
  const HomeViewSlider({
    super.key,
    required this.sliderModel,
  });
  final HomeViewSliderModel sliderModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            'SwiftShop',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: appMainColor,
                fontFamily: 'assets/fonts/muli/Muli-Bold.ttf'),
          ),
        ),
        Text(
          sliderModel.subTitle,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.34),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Image.asset(
          sliderModel.imageUrl,
          height: 280,
          width: 280,
        ),
      ],
    );
  }
}
