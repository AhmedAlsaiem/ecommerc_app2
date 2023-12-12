import 'package:ecommerc_app2/models/catergory_card_model.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/category_card.dart';
import 'package:flutter/material.dart';

class CustomBuilderCategoryCard extends StatelessWidget {
  const CustomBuilderCategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 111,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: catergoryModelList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              model: catergoryModelList[index],
            );
          },
          scrollDirection: Axis.horizontal,
        ));
  }
}
