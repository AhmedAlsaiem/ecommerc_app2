import 'package:ecommerc_app2/views/homw_view/catergory/custom_appbar_search_view.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/custom_cashback.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/custom_category_card_builder.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/cutom_icon_row_options.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/spacial_for_you_row.dart';
import 'package:flutter/material.dart';
import 'product_card_builder.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbarSearchview(),
              SizedBox(height: 35),
              CustomCashbackContiner(),
              SizedBox(height: 40),
              CustomIconRowOptions(),
              SizedBox(height: 25),
              SpacialForYouRow(title: 'Categoris'),
              SizedBox(height: 25),
              CustomBuilderCategoryCard(),
              SizedBox(height: 30),
              SpacialForYouRow(title: 'Popular Products'),
              SizedBox(height: 20),
              BuilderProductCard()
            ],
          ),
        ),
      ),
    );
  }
}
