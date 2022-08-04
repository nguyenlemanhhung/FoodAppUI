class Food {
  String imgUrl, desc, name, waitTime, cal, about;
  num score, price, quantity;
  bool hightLight;
  List<Map<String, String>> ingredients;

  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});
  static List<Food> generateRecommendFoods() {
    return [
      Food(
        'assets/images/dish1.png',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Noodle': 'assets/images/ingre2.png'},
          {'Noodle': 'assets/images/ingre3.png'},
          {'Noodle': 'assets/images/ingre4.png'},
        ],
        'hahahahahehehehehehihihih',
        hightLight: true,
      ),
      Food(
          'assets/images/dish2.png',
          'No1. in Sales',
          'Phở Bò',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Noodle': 'assets/images/ingre2.png'},
            {'Noodle': 'assets/images/ingre3.png'},
            {'Noodle': 'assets/images/ingre4.png'},
          ],
          'hahahahahehehehehehihihih'),
      Food(
          'assets/images/dish3.png',
          'No1. in Sales',
          'Xôi bắp',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Noodle': 'assets/images/ingre2.png'},
            {'Noodle': 'assets/images/ingre3.png'},
            {'Noodle': 'assets/images/ingre4.png'},
          ],
          'hahahahahehehehehehihihih'),
      Food(
        'assets/images/dish4.png',
        'No1. in Sales',
        'Bún thịt nướng',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Noodle': 'assets/images/ingre2.png'},
          {'Noodle': 'assets/images/ingre3.png'},
          {'Noodle': 'assets/images/ingre4.png'},
        ],
        'hahahahahehehehehehihihih',
        hightLight: false,
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/dish1.png',
        'No1. in Sales',
        'Hủ tiếu',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Noodle': 'assets/images/ingre2.png'},
          {'Noodle': 'assets/images/ingre3.png'},
          {'Noodle': 'assets/images/ingre4.png'},
        ],
        'hahahahahehehehehehihihih',
        hightLight: true,
      ),
      Food(
          'assets/images/dish2.png',
          'No1. in Sales',
          'Phở Bò',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Noodle': 'assets/images/ingre2.png'},
            {'Noodle': 'assets/images/ingre3.png'},
            {'Noodle': 'assets/images/ingre4.png'},
          ],
          'hahahahahehehehehehihihih'),
      Food(
          'assets/images/dish3.png',
          'No1. in Sales',
          'Xôi bắp',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Noodle': 'assets/images/ingre2.png'},
            {'Noodle': 'assets/images/ingre3.png'},
            {'Noodle': 'assets/images/ingre4.png'},
          ],
          'hahahahahehehehehehihihih'),
    ];
  }
}
