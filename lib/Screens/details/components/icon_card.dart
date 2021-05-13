import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconsCard extends StatelessWidget {
  final String icon;
  const IconsCard({this.icon});


  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.orange,
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, ),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 52,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
