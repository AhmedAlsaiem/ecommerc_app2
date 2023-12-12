import 'package:ecommerc_app2/models/catergory_card_model.dart';
import 'package:ecommerc_app2/views/chair_view.dart/chair_view.dart';
import 'package:ecommerc_app2/views/funiture_view/furniture_view.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model});
  final CateogryModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (model.title == 'furniture') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const FurnitureView();
          }));
        } else {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ChairView();
          }));
        }
      },
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.only(right: 18),
          padding: const EdgeInsets.all(16),
          height: 110,
          width: 260,
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(model.imagUrl)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 16),
          padding: const EdgeInsets.all(16),
          height: 110,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.05),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                model.subTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
