import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shamo/models/product_model.dart';
import 'package:shamo/providers/wishlist_provider.dart';

import '../themes/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    WishListProvider wishListProvider = Provider.of<WishListProvider>(context);
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              product.galleries![0].url,
              width: 60,
              // height: 60,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name!,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14.0,
                    fontWeight: semiBold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$ ${product.price}',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 35.0,
          ),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print('Test');
              }
            },
            child: GestureDetector(
              onTap: () {
                wishListProvider.setProduct(product);
              },
              child: Image.asset(
                'assets/button_wishlist_blue.png',
                width: 34.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
