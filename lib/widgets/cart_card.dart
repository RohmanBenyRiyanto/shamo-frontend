import 'package:flutter/material.dart';

import '../themes/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/image_shoes3.png'),
                    fit: BoxFit.cover,
                  ),
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
                      'Terrex Urban Low',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14.0,
                        fontWeight: semiBold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      '\$ ' '143,98',
                      style: priceTextStyle.copyWith(
                        fontSize: 14.0,
                        fontWeight: regular,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',
                    width: 16.0,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14.0, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Image.asset(
                    'assets/button_min.png',
                    width: 16.0,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove.png',
                width: 12.0,
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
