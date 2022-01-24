import 'package:flutter/material.dart';

import 'package:shamo/models/product_model.dart';

import '../../themes/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-product');
      },
      child: Container(
        width: 215.0,
        height: 275.0,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: whiteCardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: defaultMargin,
            ),
            Image.network(
              product.galleries[2].url,
              width: 215.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category.name,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12.0,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'COURT VISION 2.0',
                    style: blackTextStyle.copyWith(
                      fontSize: 18.0,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    '\$ ' + '58,67',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
