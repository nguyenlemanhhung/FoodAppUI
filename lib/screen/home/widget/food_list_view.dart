import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app_3/models/restaurant.dart';
import 'package:food_app_3/screen/detail/widget/detail.dart';
import 'package:food_app_3/screen/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map(
              (e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailPage(
                            restaurant.menu[category[selected]]![index])));
                  },
                  child: FoodItem(restaurant.menu[category[selected]]![index]),
                ),
                separatorBuilder: (_, index) => SizedBox(
                  height: 15,
                ),
                itemCount: restaurant.menu[category[selected]]!.length,
              ),
            )
            .toList(),
      ),
    );
  }
}
