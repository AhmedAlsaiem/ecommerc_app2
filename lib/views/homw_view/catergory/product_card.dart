import 'package:ecommerc_app2/models/favorite_product_model.dart';
import 'package:ecommerc_app2/models/fruniture_product_model.dart';
import 'package:ecommerc_app2/services/favoirte_product_list.dart';
import 'package:ecommerc_app2/views/product_detils_view/product_detils_view.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({super.key, required this.product});
  final FurnitureProductModel product;
  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool? var1 = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetils(
            name: widget.product.name,
            price: widget.product.price,
            description: widget.product.category,
            image: widget.product.imageUrl,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.36),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network(
                  widget.product.imageUrl,
                ),
              ),
            ]),
            const SizedBox(height: 10),
            Text(widget.product.name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "\$${'111'}",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: Colors.deepOrangeAccent.shade400,
                  ),
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  backgroundColor: Colors.red.withOpacity(0.2),
                  radius: 20,
                  child: Center(
                    child: IconButton(
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
                        icon: Icon(
                          var1 == false
                              ? Icons.favorite_outline_rounded
                              : Icons.favorite_rounded,
                          color: Colors.red,
                          size: 22,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void addProductToShoppingProductsCard() {
    int x = 0;
    for (var i = 0; i < favoriteProducts.length; i++) {
      if (favoriteProducts[i].imagUrl == widget.product.imageUrl) {
        x++;
        setState(() {});
      }
    }
    if (x == 0) {
      favoriteProducts.add(FavoriteProductModel(
          imagUrl: widget.product.imageUrl,
          pirce: widget.product.price,
          category: 'fornature',
          name: widget.product.name));
      setState(() {});
    }
  }

  void removeProductFromShoppingProductsCard() {
    for (var i = 0; i < favoriteProducts.length; i++) {
      if (favoriteProducts[i].imagUrl == widget.product.imageUrl) {
        favoriteProducts.removeAt(i);
        setState(() {});
      }
    }
  }
}
