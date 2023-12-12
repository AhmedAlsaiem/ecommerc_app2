import 'package:ecommerc_app2/models/favorite_product_model.dart';
import 'package:ecommerc_app2/views/product_detils_view/category/add_quantity_widget.dart';
import 'package:ecommerc_app2/views/product_detils_view/category/add_to_cart.dart';
import 'package:ecommerc_app2/views/product_detils_view/category/custom_animeted_continer.dart';
import 'package:ecommerc_app2/views/product_detils_view/category/custom_appbar_product.dart';
import 'package:ecommerc_app2/views/product_detils_view/category/custom_description.dart';
import 'package:ecommerc_app2/views/product_detils_view/category/custom_product_color.dart';
import 'package:flutter/material.dart';

class ProductDetils extends StatefulWidget {
  const ProductDetils(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.description});
  final String image;
  final String name;
  final String price;
  final String description;
  @override
  State<ProductDetils> createState() => _ProductDetilsState();
}

class _ProductDetilsState extends State<ProductDetils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(widget.image),
                          fit: BoxFit.cover)),
                ),
                CustomAppBarProductDetils(
                  product: FavoriteProductModel(
                      imagUrl: widget.image,
                      name: widget.name,
                      pirce: widget.price,
                      category: 'Chairs'),
                ),
                const CustomAnimatedContiner(),
              ],
            ),
            const SizedBox(height: 30),
            CustomDecreption(
              name: widget.name,
              price: widget.price,
            ),
            const SizedBox(height: 20),
            Text(
              widget.description,
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            const CustomProductColor(),
            const Spacer(),
            const AddQuantityWidget(),
            const Spacer(),
            AddToCartWidget(
              product: FavoriteProductModel(
                name: widget.name,
                pirce: widget.price,
                category: 'fornature',
                imagUrl: widget.image,
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      )),
    );
  }
}
