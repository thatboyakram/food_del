import 'food.dart';

class Restaurant {
  // all list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: 'Cheese Burger',
        description:
            'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/burgers/burger1.jpg',
        price: 9.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(price: 0.99, name: 'extra cheese'),
          Addon(price: 1.99, name: 'bacon'),
          Addon(price: 2.99, name: 'avocado'),
        ]),
    Food(
        name: 'Beef Burger',
        description:
            'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/burgers/burger2.jpeg',
        price: 10.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(price: 3.99, name: 'extra beef'),
          Addon(price: 1.99, name: 'bacon'),
          Addon(price: 2.99, name: 'avocado'),
        ]),
    Food(
        name: 'Chicken Burger',
        description:
            'A juicy chicken patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/burgers/burger3.jpeg',
        price: 9.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(price: 3.99, name: 'extra chicken'),
          Addon(price: 1.99, name: 'bacon'),
          Addon(price: 2.99, name: 'avocado'),
        ]),
    Food(
        name: 'Double cheese Burger',
        description:
            'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/burgers/burger4.jpeg',
        price: 9.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(price: 0.99, name: 'extra cheese'),
          Addon(price: 1.99, name: 'bacon'),
          Addon(price: 2.99, name: 'avocado'),
        ]),
    //desserts
    Food(
        name: 'Cheese cake',
        description:
        'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/desserts/dessert1.jpg',
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(price: 0.99, name: 'extra cheese'),
          Addon(price: 1.99, name: 'icing'),
          Addon(price: 2.99, name: 'berries'),
        ]),
    Food(
        name: 'Banana split',
        description:
        'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/desserts/dessert2.jpg',
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(price: 3.99, name: 'extra banana'),
          Addon(price: 2.99, name: 'cream'),
          Addon(price: 2.99, name: 'avocado'),
        ]),
    Food(
        name: 'Chocolate brownie',
        description:
        'A juicy chicken patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/desserts/dessert3.jpeg',
        price: 6.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(price: 3.99, name: 'extra chocolate'),
          Addon(price: 1.99, name: 'cream'),
          Addon(price: 2.99, name: 'berries'),
        ]),
    Food(
        name: 'Baked Alaska',
        description:
        'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/desserts/dessert4.jpg',
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(price: 2.99, name: 'extra cake'),
          Addon(price: 2.99, name: 'berries'),
          Addon(price: 1.99, name: 'cream'),
        ]),
    //drinks
    Food(
        name: 'Pepsi',
        description:
        'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/drinks/pepsi.jpg',
        price: 9.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(price: 2.50, name: 'extra pepsi'),
          Addon(price: 1.99, name: 'ice'),
        ]),
    Food(
        name: 'Pinky Juice',
        description:
        'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/drinks/pinky.png',
        price: 10.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(price: 3.99, name: 'extra juice'),
          Addon(price: 1.99, name: 'ice'),
        ]),
    Food(
        name: 'Spark',
        description:
        'A juicy chicken patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/spark/spark.jpg',
        price: 9.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(price: 3.99, name: 'extra sparky'),
          Addon(price: 1.99, name: 'ice'),
        ]),
    Food(
        name: 'Pop Juice',
        description:
        'A juicy beef patty with melted cheddar, lettuce,tomato, and a hint of onion and pickle',
        imagePath: 'images/pop/pop.jpg',
        price: 9.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(price: 3.99, name: 'extra pop'),
          Addon(price: 1.99, name: 'ice'),
        ]),
    //salads
    Food(
        name: 'Caesar Salad',
        description:
        'Romaine lettuce, croutons, and Parmesan tossed with a dressing featuring lemon juice, olive oil, Dijon mustard, Worcestershire sauce, salt, and pepper.',
        imagePath: 'images/salads/salad1.jpg',
        price: 4.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(price: 0.99, name: 'extra cheese'),
          Addon(price: 1.99, name: 'bacon'),
          Addon(price: 0.99, name: 'avocado'),
        ]),
    Food(
        name: 'Leafy green salad',
        description:
        'Tossed salad made with greens, such as iceberg lettuce, arugula, and spinach',
        imagePath: 'images/salads/salad2.jpg',
        price: 4.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(price: 0.99, name: 'extra greens'),
          Addon(price: 1.99, name: 'bread'),
          Addon(price: 1.99, name: 'avocado'),
        ]),
    Food(
        name: 'Greek salad',
        description:
        'A Greek salad consists of tomatoes, cucumbers, olives, feta, and onions. It\'s lightly dressed with olive oil, salt, pepper, and oregano.',
        imagePath: 'images/salads/salad3.jpg',
        price: 9.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(price: 1.99, name: 'banana'),
          Addon(price: 2.99, name: 'avocado'),
        ]),
    Food(
        name: 'Fattoush',
        description:
        'Composed of mixed greens and toasted or fried khubz, or flatbread.',
        imagePath: 'images/salads/salad4.jpg',
        price: 10.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(price: 2.99, name: 'extra khubz'),
          Addon(price: 1.99, name: 'bacon'),
          Addon(price: 2.99, name: 'avocado'),
        ]),
  ];
  /*
  GETTERS
*/

/*
  OPERATIONS
*/

/*
  HELPERS
*/
}
