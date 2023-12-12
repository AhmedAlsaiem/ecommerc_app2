import 'package:ecommerc_app2/models/fruniture_product_model.dart';
import 'package:ecommerc_app2/services/furniture_product_service.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BuilderProductCard extends StatelessWidget {
  const BuilderProductCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        child: FutureBuilder<List<FurnitureProductModel>>(
            future: FurnitureProductServices().getTrendyFurnitureProducts(),
            builder: (context, sanpshot) {
              if (sanpshot.hasData) {
                List<FurnitureProductModel> furnitureProductList =
                    sanpshot.data!;
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: sanpshot.data!.length,
                  itemBuilder: (context, index) {
                    return ProductCardWidget(
                      product: furnitureProductList[index],
                    );
                  },
                );
              } else {
                return const Center(
                    child: SpinKitThreeInOut(
                  color: Colors.deepOrange,
                  size: 50.0,
                ));
                
              }
            }));
  }
}
/** */