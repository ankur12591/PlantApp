import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleCountryPrice extends StatelessWidget {
  final String title, country;
  final int price;
  final Function press;

  const TitleCountryPrice({this.title, this.country, this.price, this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
      padding: const EdgeInsets.only(
          bottom: kDefaultPadding,
          left: kDefaultPadding,
          right: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "$country",
                  style: TextStyle(
                    fontSize: 18,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
