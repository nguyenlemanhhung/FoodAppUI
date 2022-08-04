import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_app_3/constants/colors.dart';
import 'package:food_app_3/screen/home/widget/food_list.dart';
import 'package:food_app_3/screen/home/widget/food_list_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../models/restaurant.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_new_outlined,
            Icons.search_outlined,
          ),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8)),
                activeDotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: DotBorder(
                    padding: 2,
                    width: 2,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              onDotClicked: ((index) => pageController.jumpToPage(index)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
