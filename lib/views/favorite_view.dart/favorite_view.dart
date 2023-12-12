import 'package:ecommerc_app2/models/favorite_product_model.dart';
import 'package:ecommerc_app2/services/favoirte_product_list.dart';
import 'package:ecommerc_app2/views/favorite_view.dart/categorys/custom_favorite_view_app_bar.dart';
import 'package:ecommerc_app2/views/favorite_view.dart/customFavorite_product_card.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: const Color.fromARGB(255, 213, 202, 202),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, right: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 134, 134, 134),
                  ),
                  child: CustomFavoriteViewAppBar(
                    title: 'Favorite',
                  ),
                ),
              ),
              SliverList(
                  // itemCount: favoriteProducts.length,
                  //   clipBehavior: Clip.none,
                  delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ItemSpecial(
                    product: FavoriteProductModel(
                      name: favoriteProducts[index].name,
                      pirce: favoriteProducts[index].pirce,
                      category: favoriteProducts[index].category,
                      imagUrl: favoriteProducts[index].imagUrl,
                    ),
                  );
                },
                childCount: favoriteProducts.length,
              )),
            ],
          ),
        ),
      ),
    ));
  }
}

