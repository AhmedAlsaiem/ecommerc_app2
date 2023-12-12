import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductShoppingCardItem extends StatefulWidget {
  String text;
  String subtext;

  String url;
  String price;
  final int index;

  ProductShoppingCardItem(
      {super.key,
      required this.text,
      required this.subtext,
      required this.url,
      required this.price,
      required this.index});

  @override
  State<ProductShoppingCardItem> createState() =>
      _ProductShoppingCardItemState();
}

class _ProductShoppingCardItemState extends State<ProductShoppingCardItem> {
  int prodctNumber = 0;
  bool bo = true;
  @override
  Widget build(BuildContext context) {
    // var text ;
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 155,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 15,
              width: 15,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (bo == true) {
                      //  shoppingProductList.removeAt(widget.index);
                      bo = false;
                    }
                  });
                },
                child: const Icon(
                  Icons.close,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.url),
                            fit: BoxFit.cover)),
                  ),
                ),
                // Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        widget.text,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        children: [
                          const Text("\$ ",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Text(widget.price,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
