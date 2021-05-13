import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app1/Screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendsPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(title: "Samantha",
                    country: "Russia",
                    price: 440,),
                ),
              );
            },
            child: RecommendPlantCard(
              image: "assets/images/image_1.png",
              title: "Samantha",
              country: "Russia",
              price: 440,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(title: "Angelica",
                    country: "Russia",
                    price: 440,),
                ),
              );
            },
            child: RecommendPlantCard(
              image: "assets/images/image_2.png",
              title: "Angelica",
              country: "Russia",
              price: 440,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(title: "Samantha",
                    country: "Russia",
                    price: 440,),
                ),
              );
            },
            child: RecommendPlantCard(
              image: "assets/images/image_3.png",
              title: "Samantha",
              country: "Russia",
              price: 440,
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function press;

  const RecommendPlantCard({
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                      text: "$country".toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                    )
                  ]),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
