import 'package:flutter/material.dart';
import 'package:shamo/themes/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12.0,
                    fontWeight: regular,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16.0,
                    fontWeight: semiBold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  '\$ ' + '285,73',
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
    );
  }
}
