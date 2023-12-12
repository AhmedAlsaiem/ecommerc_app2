import 'package:ecommerc_app2/views/favorite_view.dart/favorite_view.dart';
import 'package:ecommerc_app2/views/homw_view/catergory/product_view_body.dart';
import 'package:ecommerc_app2/views/homw_view/person_ifon/person_info.dart';
import 'package:ecommerc_app2/views/shopping_card.dart/shopping_cart.dart';
import 'package:flutter/material.dart';

class ProductHome extends StatefulWidget {
  const ProductHome({super.key});

  @override
  State<ProductHome> createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: getHomeViewBody(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            index = val;
            setState(() {});
          },
          currentIndex: index,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          unselectedItemColor: const Color.fromARGB(255, 112, 111, 111),
          selectedItemColor: Colors.deepOrangeAccent.shade200,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget getHomeViewBody() {
    switch (index) {
      case 0:
        return const ProductViewBody();
      // break;
      case 1:
        return const FavoriteView();

      // break;
      case 2:
        return const ShoppingCard();
      //      break;
      case 3:
        return const PersonBody();
      //      break;
      default:
        return const Text('null');
    }
  }
}

