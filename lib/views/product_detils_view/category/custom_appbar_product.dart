import 'package:ecommerc_app2/models/favorite_product_model.dart';
import 'package:ecommerc_app2/services/favoirte_product_list.dart';
import 'package:flutter/material.dart';

class CustomAppBarProductDetils extends StatefulWidget {
  const CustomAppBarProductDetils({super.key, required this.product});
  final FavoriteProductModel product;
  @override
  State<CustomAppBarProductDetils> createState() =>
      _CustomAppBarProductDetilsState();
}

class _CustomAppBarProductDetilsState extends State<CustomAppBarProductDetils> {
  bool var1 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        GestureDetector(
          onTap: () {
            if (var1 == false) {
              var1 = true;

              setState(() {});
            } else {
              var1 = false;
              setState(() {});
            }
            if (var1 == true) {
              addProductToShoppingProductsCard();

              setState(() {});
            } else if (var1 == false) {
              removeProductFromShoppingProductsCard();
              setState(() {});
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.black12.withOpacity(0.1),
              child: Icon(
                var1 == false
                    ? Icons.favorite_outline_rounded
                    : Icons.favorite_rounded,
                color: Colors.black,
                size: 22,
              ),
            ),
          ),
        )
      ],
    );
  }

  void addProductToShoppingProductsCard() {
    int x = 0;
    for (var i = 0; i < favoriteProducts.length; i++) {
      if (favoriteProducts[i].imagUrl == widget.product.imagUrl) {
        x++;
        setState(() {});
      }
    }
    if (x == 0) {
      favoriteProducts.add(FavoriteProductModel(
          imagUrl: widget.product.imagUrl,
          pirce: widget.product.pirce,
          category: widget.product.category,
          name: widget.product.name));
      setState(() {});
    }
  }

  void removeProductFromShoppingProductsCard() {
    for (var i = 0; i < favoriteProducts.length; i++) {
      if (favoriteProducts[i].imagUrl == widget.product.imagUrl) {
        favoriteProducts.removeAt(i);
        setState(() {});
      }
    }
  }
}
