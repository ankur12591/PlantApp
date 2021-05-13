import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app1/Screens/details/components/icon_card.dart';

import '../../../constants.dart';

class ImagesAndIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.orange,

        height: MediaQuery.of(context).size.height * 0.85,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                //color: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.0, horizontal: kDefaultPadding ),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //color: Colors.green,
                      child: IconButton(
                        padding: EdgeInsets.only(right: kDefaultPadding * 1.8),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    IconsCard(icon: "assets/icons/sun.svg"),
                    IconsCard(icon: "assets/icons/icon_2.svg"),
                    IconsCard(icon: "assets/icons/icon_3.svg"),
                    IconsCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-20, 15),
                      blurRadius: 25,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
                ),


              ),
            ),
          ],
        ),
      ),
    );
  }
}
