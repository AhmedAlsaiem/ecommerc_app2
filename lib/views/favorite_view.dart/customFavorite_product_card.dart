import 'package:ecommerc_app2/models/favorite_product_model.dart';
import 'package:ecommerc_app2/views/product_detils_view/product_detils_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemSpecial extends StatelessWidget {
  ItemSpecial({
    super.key,
    required this.product,
  });
  final FavoriteProductModel product;
  @override
  Widget build(BuildContext context) {
    // var text ;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5, left: 2, right: 2),
      child: GestureDetector(
        onTap: () {
          // Navigator.pushNamed(context, 'detailspage');
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProductDetils(
              name: product.name,
              image: product.imagUrl,
              description: product.category,
              price: product.pirce,
            );
          }));
        },
        child: Card(
          color: const Color.fromARGB(255, 71, 69, 69).withOpacity(.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 120,
            width: double.infinity,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: double.infinity,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(product.imagUrl),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name.length <= 18
                          ? product.name
                          : product.name.substring(0, 18),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 170,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        product.category,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(width: 140),
                        const Text("\$ ",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text(
                            product.pirce.length <= 4
                                ? product.pirce
                                : product.pirce.substring(0, 4),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
