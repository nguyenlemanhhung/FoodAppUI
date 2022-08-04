import 'package:food_app_3/models/food.dart';

class Restaurant {
  String name, waitTime, distance, label, logoUrl, desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );

  static Restaurant generateRestaurant() {
    return Restaurant('Restaurant', '20-30 min', '2.4km', 'Restaurant',
        'assets/images/res_logo.png', 'Orange sandwiches is delicious', 4.7, {
      'Recommend': Food.generateRecommendFoods(),
      'Popular': Food.generatePopularFoods(),
      'Noodles': [],
      'Pizza': [],
    });
  }
}
