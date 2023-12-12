import 'package:ecommerc_app2/views/favorite_view.dart/categorys/custom_favorite_view_app_bar.dart';
import 'package:ecommerc_app2/views/shopping_card.dart/category/custom_sliver_list.dart';
import 'package:ecommerc_app2/views/shopping_card.dart/category/custom_total_price.dart';
import 'package:ecommerc_app2/views/shopping_card.dart/category/order_product_widget.dart';
import 'package:flutter/material.dart';

class ShoppingCard extends StatefulWidget {
  const ShoppingCard({super.key});

  @override
  State<ShoppingCard> createState() => _ShoppingCardState();
}

class _ShoppingCardState extends State<ShoppingCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 235, 233, 233),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 87, 85, 85),
                ),
                child: CustomFavoriteViewAppBar(
                  title: 'Shopping Cart',
                ),
              )),
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              CustomSliverList(),
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //    CutomSearchTextField(),
                    SizedBox(height: 20),
                    CustomTotalPrice(),
                    SizedBox(height: 40),
                    OrderProductWidget(),
                    SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
