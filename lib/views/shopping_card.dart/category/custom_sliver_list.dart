import 'package:ecommerc_app2/services/shopping_cart.dart';
import 'package:ecommerc_app2/views/shopping_card.dart/category/custom_product_card_shopping_cart.dart';
import 'package:flutter/material.dart';

class CustomSliverList extends StatefulWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  State<CustomSliverList> createState() => _CustomSliverListState();
}

class _CustomSliverListState extends State<CustomSliverList> {
  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: productshoppingCardList.length, (context, index) {
      return ProductShoppingCardItem(
        text: productshoppingCardList[index].name,
        subtext: 'fornature',
        url: productshoppingCardList[index].imagUrl,
        price: productshoppingCardList[index].pirce,
        index: index,
      );
    }));
  }
}
