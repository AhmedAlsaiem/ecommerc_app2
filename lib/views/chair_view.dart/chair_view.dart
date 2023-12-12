import 'package:ecommerc_app2/models/chair_model.dart';
import 'package:ecommerc_app2/models/favorite_product_model.dart';
import 'package:ecommerc_app2/services/favoirte_product_list.dart';
import 'package:ecommerc_app2/services/furniture_product_service.dart';
import 'package:ecommerc_app2/views/product_detils_view/product_detils_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChairView extends StatefulWidget {
  const ChairView({super.key});

  @override
  State<ChairView> createState() => _ChairViewState();
}

class _ChairViewState extends State<ChairView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text(
          'Chairs',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Color.fromARGB(255, 245, 244, 244),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: // Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.start,
            //  children: [
            //  CustomAppbar(),
            //  SizedBox(height: 20),
            FutureBuilder(
          future: FurnitureProductServices().getAllChairsProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ChairModel> chairList = snapshot.data!;
              return GridView.builder(
                itemCount: chairList.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 11,
                  childAspectRatio: 0.65,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return CustomFurintureCard(
                    product: chairList[index],
                  );
                },
              );
            } else {
              return Center(
                  child: SpinKitThreeInOut(
                color: Colors.grey.shade700,
                size: 50.0,
              ));
            }
          },
        ),
      )),
    );
  }
}

class CustomFurintureCard extends StatefulWidget {
  const CustomFurintureCard({
    super.key,
    required this.product,
  });
  final ChairModel product;
  @override
  State<CustomFurintureCard> createState() => _CustomFurintureCardState();
}

class _CustomFurintureCardState extends State<CustomFurintureCard> {
  bool? var1 = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetils(
            name: widget.product.title,
            image: widget.product.imageUrl,
            description: widget.product.description,
            price: widget.product.price.toString(),
          );
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: const Color.fromARGB(255, 241, 239, 239),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(alignment: AlignmentDirectional.topEnd, children: [
                  Image.network(
                    widget.product.imageUrl,
                    fit: BoxFit.cover,
                    height: 190,
                    width: 190,
                  ),
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
                    child: CircleAvatar(
                      backgroundColor: Colors.red.withOpacity(0.1),
                      child: Icon(
                        var1 == false
                            ? Icons.favorite_outline_rounded
                            : Icons.favorite_rounded,
                        color: Colors.red,
                        size: 22,
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '  ${widget.product.title}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '  furniture',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "  \$${widget.product.price}",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          )
        ],
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
          pirce: widget.product.price.toString(),
          category: 'fornature',
          name: widget.product.title));
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
