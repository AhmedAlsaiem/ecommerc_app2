import 'package:ecommerc_app2/models/favorite_product_model.dart';
import 'package:ecommerc_app2/services/shopping_cart.dart';
import 'package:flutter/material.dart';

class AddToCartWidget extends StatefulWidget {
  AddToCartWidget({
    super.key,
    required this.product,
  });
  final FavoriteProductModel product;
  @override
  State<AddToCartWidget> createState() => _AddToCartWidgetState();
}

class _AddToCartWidgetState extends State<AddToCartWidget> {
  bool var1 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
          child: Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(22)),
            child: const Center(
              child: Text(
                'Add To Cart',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xff687154),
          child: IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            onPressed: () {
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
          ),
        )
      ],
    );
  }

  void addProductToShoppingProductsCard() {
    int x = 0;
    for (var i = 0; i < productshoppingCardList.length; i++) {
      if (productshoppingCardList[i].imagUrl == widget.product.imagUrl) {
        x++;
        setState(() {});
      }
    }
    if (x == 0) {
      productshoppingCardList.add(FavoriteProductModel(
          imagUrl: widget.product.imagUrl,
          pirce: widget.product.pirce.toString(),
          category: 'fornature',
          name: widget.product.name));
      setState(() {});
    }
  }

  void removeProductFromShoppingProductsCard() {
    for (var i = 0; i < productshoppingCardList.length; i++) {
      if (productshoppingCardList[i].imagUrl == widget.product.imagUrl) {
        productshoppingCardList.removeAt(i);
        setState(() {});
      }
    }
  }
}
//productshoppingCardList