import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app1/Components/bottom_navigation_bar.dart';
import 'package:plant_app1/Screens/home/components/header_with_searchbox.dart';
import 'package:plant_app1/Screens/home/components/recomends_plants.dart';
import 'package:plant_app1/Screens/home/components/title_with_more.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithSearchBox(),
            TitleWithMoreBtn(title: "Recomended",),
            RecomendsPlants(),
            TitleWithMoreBtn(title: "Featured Plants", ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
