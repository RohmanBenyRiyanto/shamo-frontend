import 'package:flutter/material.dart';

import '../../themes/theme.dart';
import '../../widgets/primarybutton.dart';
import '../../widgets/checkout_card.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: primaryTextColor,
          ),
        ),
        title: Text(
          'Checkout Details',
          style: primaryTextStyle.copyWith(
            fontSize: 18.0,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          //List Item
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16.0,
                    fontWeight: medium,
                  ),
                ),
                const CheckOutCard(),
                const CheckOutCard(),

                //Address Details
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    top: defaultMargin,
                  ),
                  padding: const EdgeInsets.all(
                    20.0,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address Details',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16.0,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icon_store_location.png',
                                width: 40,
                              ),
                              Image.asset(
                                'assets/icon_line.png',
                                height: 30,
                              ),
                              Image.asset(
                                'assets/icon_your_address.png',
                                width: 40.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Store Location',
                                  style: secondaryTextStyle.copyWith(
                                    fontSize: 12.0,
                                    fontWeight: light,
                                  ),
                                ),
                                Text(
                                  'Adidas Core',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14.0,
                                    fontWeight: medium,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: defaultMargin,
                                ),
                                Text(
                                  'Your Address',
                                  style: secondaryTextStyle.copyWith(
                                    fontSize: 12.0,
                                    fontWeight: light,
                                  ),
                                ),
                                Text(
                                  'Marsemoon',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14.0,
                                    fontWeight: medium,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Payment Summary
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    top: defaultMargin,
                  ),
                  padding: const EdgeInsets.all(
                    20.0,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Summary',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16.0,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product Quantity',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 12.0,
                              fontWeight: regular,
                            ),
                          ),
                          Text(
                            '2' ' Items',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14.0,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product Price',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 12.0,
                              fontWeight: regular,
                            ),
                          ),
                          Text(
                            '\$ ' '575.96',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14.0,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: secondaryTextStyle.copyWith(
                              fontSize: 12.0,
                              fontWeight: regular,
                            ),
                          ),
                          Text(
                            // '\$ ''575.96',
                            'Free',
                            style: primaryTextStyle.copyWith(
                              fontSize: 14.0,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        child: Divider(
                          thickness: 0.3,
                          color: subtitleColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: priceTextStyle.copyWith(
                              fontSize: 14.0,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            '\$ ' '575.96',
                            style: priceTextStyle.copyWith(
                              fontSize: 14.0,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  text: "Checkout Now",
                  margin_top: 30.0,
                  press: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/checkout-success', (route) => false);
                  },
                ),
                SizedBox(
                  height: defaultMargin,
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
