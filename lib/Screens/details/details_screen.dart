import 'package:flutter/material.dart';
import 'package:plant_app1/Screens/details/components/image_and_icons.dart';
import 'package:plant_app1/Screens/details/components/title_country_price.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {

  final String title, country;
  final int price;
  final Function press;

  const DetailsScreen({this.title, this.country, this.price, this.press});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ImagesAndIcons(),
              //Spacer(),

              TitleCountryPrice(title: title, country: country, price: price,),
              //SizedBox(height: MediaQuery.of(context).size.height * 0.11,)

            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      //color: Colors.orange,
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            //color: Colors.orange,
            width: MediaQuery.of(context).size.width / 2,

            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                ),
              ),
              color: kPrimaryColor,
              onPressed: () {},
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: FlatButton(
              //color: kPrimaryColor,
             // color: Colors.orange,
              height: 84,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),

              child: Text(
                "Description",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
