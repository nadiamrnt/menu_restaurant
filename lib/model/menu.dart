class Menu {
  String image;
  String name;
  String desc;
  int price;
  String waitingTime;
  String rating;
  String calories;
  String about;

  Menu({
    required this.image,
    required this.name,
    required this.desc,
    required this.price,
    required this.waitingTime,
    required this.rating,
    required this.calories,
    required this.about,
  });
}

var menuList = [
  Menu(
      image: 'images/bigmac.png',
      name: 'Big Mac',
      desc: 'No.1 in Sales',
      price: 38000,
      waitingTime: '17 min',
      rating: '4.8',
      calories: '527 Kcal',
      about:
          'Burger Ikonik McDonald\'s. Dua lapis daging sapi gurih disajikan dengan saus spesial, selada segar, keju, acar timun, bawang, diapit roti bertabur wijen'),
  Menu(
      image: 'images/beefburger.png',
      name: 'Beef Burger',
      desc: 'Highly Recommended',
      price: 15000,
      waitingTime: '15 min',
      rating: '4.9',
      calories: '270 Kcal',
      about:
          'Roti burger, 100% daging sapi, saus tomat, acar timun, potongan bawang dan mustard.'),
  Menu(
      image: 'images/cheeseburger.png',
      name: 'Cheese Burger',
      desc: 'Recommended',
      price: 15000,
      waitingTime: '15 min',
      rating: '4.9',
      calories: '326 Kcal',
      about:
          'Roti burger, daging sapi, keju, saus tomat, acar, potongan bawang dan mustard.'),
  Menu(
      image: 'images/chickenburger.png',
      name: 'Chicken Burger',
      desc: 'Recommended',
      price: 15000,
      waitingTime: '15 min',
      rating: '4.8',
      calories: '321 Kcal',
      about:
          'Roti Burger dengan daging ayam goreng yang disajikan dengan roti lembut , selada segar dan saus McChicken.'),
  Menu(
      image: 'images/chicken-snackwrap.png',
      name: 'Chicken Snack Wrap',
      desc: 'Low Fat',
      price: 14000,
      waitingTime: '10 min',
      rating: '4.5',
      calories: '270 Kcal',
      about:
          'Patty ayam goreng emas yang dibungkus oleh roti tortilla matang dan disajikan dengan selada segar dan saus spesial McDonald\'s.'),
  Menu(
      image: 'images/cocacola.png',
      name: 'Coca Cola',
      desc: 'Soft Drink',
      price: 5000,
      waitingTime: '5 min',
      rating: '4.5',
      calories: '135 Kcal',
      about: 'Minuman berkarbonasi dengan rasa cola'),
  Menu(
      image: 'images/fanta.png',
      name: 'Fanta',
      desc: 'Soft Drink',
      price: 5000,
      waitingTime: '5 min',
      rating: '4.5',
      calories: '135 Kcal',
      about: 'Minuman berkarbonasi dengan rasa strawberry'),
  Menu(
      image: 'images/iced-milo.png',
      name: 'Iced Milo',
      desc: 'Soft Drink',
      price: 5000,
      waitingTime: '5 min',
      rating: '4.6',
      calories: '150 Kcal',
      about: 'Susu coklat Milo yang segar dan bernutrisi'),
  Menu(
      image: 'images/sprite.png',
      name: 'Sprite',
      desc: 'Soft Drink',
      price: 5000,
      waitingTime: '5 min',
      rating: '4.5',
      calories: '135 Kcal',
      about: 'Minuman berkarbonasi dengan rasa perpaduan lemon lime dan soda'),
];
