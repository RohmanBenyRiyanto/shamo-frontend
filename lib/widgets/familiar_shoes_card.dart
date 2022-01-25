import 'package:flutter/material.dart';

import 'package:shamo/models/product_model.dart';
import 'package:shamo/screens/details_product/detail_page.dart';

import '../../themes/theme.dart';

class FamiliarShoesCard extends StatelessWidget {
  const FamiliarShoesCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProductPage(product: product),
          ),
        );
      },
      child: Container(
        width: 54.0,
        height: 54.0,
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(product.galleries[0].url),
          ),
          borderRadius: BorderRadius.circular(
            6.0,
          ),
        ),
      ),
    );
  }
}
