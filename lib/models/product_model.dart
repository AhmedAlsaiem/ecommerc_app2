class ProductInfo {
  final String title;
  final String price;
  final String imagUrl;
  final bool faivor = false;

  ProductInfo({
    required this.title,
    required this.price,
    required this.imagUrl,
  });
}

List<ProductInfo> productInfoList = [
  ProductInfo(
    title: 'wireless controller for\nPS4',
    price: '64.99',
    imagUrl: 'assets/images/ps4_console_white_1.png',
  ),
  ProductInfo(
    title: 'Nike Sport white\nMain Paint',
    price: '50.5',
    imagUrl: 'assets/images/Image Popular Product 2.png',
  ),
  ProductInfo(
    title: 'Gloves xc Omega -\n Palygon ',
    price: '36.55',
    imagUrl: 'assets/images/glap.png',
  ),
];
