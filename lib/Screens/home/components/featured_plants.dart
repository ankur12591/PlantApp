import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_2.png",
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final String image;

  const FeaturedPlantCard({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 1.5,
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
