import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kurocafe/pages/bottomBar.dart';
import 'package:kurocafe/pages/catergory.dart';
import 'package:kurocafe/pages/util.dart';
import 'package:kurocafe/pages/item_details.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  final List<Map<String, dynamic>> cartItems = [];

  void addItemToCart(String itemName, String itemPrice, int quantity) {
    setState(() {
      cartItems.add({
        'name': itemName,
        'price': itemPrice,
        'quantity': quantity,
      });
    });
  }

  final List<Map<String, dynamic>> coffeeType = [
    {
      'name': 'HOT COFFEE',
      'selected': true,
      'categories': [
        {
          'name': 'Category1',
          'tiles': [
            {
              'name': 'Americano',
              'price': '150',
              'imagePath': 'images/coffees/coffee/h-americano.png',
              'rating': '4.6',
              'desc': 'A classic espresso-based drink made by carefully extracting shots of espresso and then delicately diluting them with hot water. This meticulous process results in a beverage that retains the bold and robust flavor of espresso while providing a smooth and satisfying drinking experience.'
            },
            {
              'name': 'Brown Sugar Coffee',
              'price': '180',
              'imagePath': 'images/coffees/coffee/h-brown.png',
              'rating': '4.7',
              'desc': 'A warm and comforting beverage featuring espresso and steamed milk infused with the sweetness of brown sugar, offering a cozy twist on a classic drink.'
            },
            {
              'name': 'Cappucino',
              'price': '190',
              'imagePath': 'images/coffees/coffee/h-cappucino.png',
              'rating': '5.0',
              'desc': 'Originating from Italy, a cappuccino is a beloved coffee beverage that combines the intense flavor of espresso with the creamy texture of steamed milk and velvety milk foam. Topped with a delicate dusting of cocoa powder or cinnamon, each sip offers a harmonious balance of rich espresso and luxurious milk foam.'
            },
            {
              'name': 'Caramel Macchiato',
              'price': '170',
              'imagePath': 'images/coffees/coffee/h-caramel.png',
              'rating': '4.8',
              'desc': 'Indulge in the delightful sweetness of a caramel macchiato, where expertly brewed espresso meets velvety steamed milk and a generous drizzle of luscious caramel syrup. With each sip, youll experience the perfect harmony of espressos boldness, the creaminess of milk, and the irresistible sweetness of caramel.'
            },
            {
              'name': 'Mocha',
              'price': '180',
              'imagePath': 'images/coffees/coffee/h-mocha.png',
              'rating': '5.0',
              'desc': ' Treat yourself to the decadent richness of a mocha, a luxurious blend of espresso, steamed milk, and velvety chocolate syrup. With each sip, youll be greeted by the bold aroma of espresso, followed by the creamy texture of steamed milk and the indulgent sweetness of chocolate, creating a truly indulgent coffee experience.'
            },
            
          ],
        },
      ],
    },
    {
      'name': 'COLD COFFEE',
      'selected': false,
      'categories': [
        {
          'name': 'Category3',
          'tiles': [
            {
              'name': 'Iced Cappuccino',
              'price': '170',
              'imagePath': 'images/coffees/icedcoffee/c-brown sugar expresso.PNG',
              'rating': '4.7',
              'desc': 'Embrace the warmth and comfort of a brown sugar-infused espresso beverage, where rich espresso meets creamy steamed milk and the sweet, caramel-like essence of brown sugar. Sip by sip, youll be enveloped in a cozy embrace of comforting flavors, making it the perfect companion for a chilly day or a relaxing moment.'
            },
            {
              'name': 'Iced Americano',
              'price': '160',
              'imagePath': 'images/coffees/icedcoffee/c-iced americano.PNG',
              'rating': '4.5',
              'desc': 'Cool down on a warm day with an invigorating iced Americano, where freshly brewed espresso is poured over ice and gently blended with cold water. Refreshing and revitalizing, each sip offers a crisp and smooth coffee flavor, making it the perfect pick-me-up for any summer day.'
            },
            {
              'name': 'Iced Mocha',
              'price': '190',
              'imagePath': 'images/coffees/icedcoffee/c-iced mocha.PNG',
              'rating': '4.4',
              'desc': 'Satisfy your cravings for chocolatey indulgence with an iced mocha, featuring a delightful combination of espresso, cold milk, and rich chocolate syrup served over ice. With its creamy texture, bold espresso flavor, and indulgent chocolatey sweetness, its the ultimate treat for any time of day.'
            },
            {
              'name': 'Salted Caramel',
              'price': '200',
              'imagePath': 'images/coffees/icedcoffee/c-salted caramel.PNG',
              'rating': '5.0',
              'desc': 'Indulge in the perfect balance of sweet and salty flavors with a salted caramel iced latte, where rich espresso is combined with cold milk and a decadent swirl of salted caramel syrup over ice. Each sip is a symphony of flavors, blending the boldness of espresso with the creamy sweetness of caramel and a hint of savory saltiness.'
            },
            {
              'name': 'Iced Expresso',
              'price': '200',
              'imagePath': 'images/coffees/icedcoffee/h-iced expressoo.PNG',
              'rating': '4.8',
              'desc': 'Experience the bold intensity of espresso in a refreshing new way with an iced espresso, where shots of expertly brewed espresso are poured over ice, creating a crisp and invigorating coffee beverage. With its bold flavor and refreshing chill, its the perfect choice for coffee lovers seeking a cool and satisfying pick-me-up.'
            },
          ],
        },
      ],
    },
    {
      'name': 'TEA',
      'selected': false,
      'categories': [
        {
          'name': 'Category5',
          'tiles': [
            {
              'name': 'Hibiscus Tea',
              'price': '150',
              'imagePath': 'images/coffees/tea/i-hibiscus.png',
              'rating': '4.2',
              'desc': 'Embark on a journey of vibrant flavors with hibiscus tea, a refreshing herbal beverage made from steeping dried hibiscus flowers in hot water. With its tangy and floral notes, each sip is a revitalizing burst of flavor, making it the perfect choice for those seeking a refreshing and antioxidant-rich drink.'
            },
            {
              'name': 'Honey Strawberry',
              'price': '100',
              'imagePath': 'images/coffees/tea/i-honey strawberry.png',
              'rating': '4.5',
              'desc': 'Experience the natural sweetness of honey and strawberries in a soothing cup of tea, featuring brewed tea infused with fragrant honey and juicy strawberries. With its gentle warmth and delicate flavors, its a comforting and rejuvenating beverage thats perfect for relaxing moments.'
            },
            {
              'name': 'Mango Tea',
              'price': '150',
              'imagePath': 'images/coffees/tea/i-mango tea.png',
              'rating': '3.9',
              'desc': 'Transport yourself to a tropical paradise with mango tea, featuring the exotic flavor of ripe mango infused into freshly brewed tea. With its luscious sweetness and refreshing fruitiness, its a delightful escape from the ordinary, perfect for brightening up your day.'
            },
            {
              'name': 'Lemonade Tea',
              'price': '150',
              'imagePath': 'images/coffees/tea/i-lemon tea.png',
              'rating': '4.7',
              'desc': 'Quench your thirst with the zesty freshness of lemonade tea, a refreshing blend of freshly brewed tea and tangy lemonade. With its perfect balance of sweetness and citrusy tang, each sip is a revitalizing burst of flavor, making it the ideal companion for a sunny afternoon.'
            },
            {
              'name': 'Strawberry Tea',
              'price': '200',
              'imagePath': 'images/coffees/tea/i-strawberry.png',
              'rating': '5.0',
              'desc': 'Indulge in the luxurious sweetness of strawberry cream tea, where creamy milk meets ripe strawberries and freshly brewed tea. With its velvety texture and luscious fruitiness, each sip is a decadent delight, making it the perfect treat for any occasion.'
            },
          ],
        },
      ],
    },
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      coffeeType.forEach((item) {
        item['selected'] = false;
      });
      coffeeType[index]['selected'] = true;
    });
  }

  List<Widget> getFilteredCategories() {
    for (var item in coffeeType) {
      if (item['selected']) {
        return item['categories'].map<Widget>((category) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: category['tiles'].map<Widget>((tileData) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemDetailsPage(
                              imagePath: tileData['imagePath']!,
                              itemName: tileData['name']!,
                              itemPrice: tileData['price']!,
                              itemRating: tileData['rating']!,
                              addItemToCart: addItemToCart,
                              itemDescription: tileData['desc']!,
                            ),
                          ),
                        );
                      },
                      child: CoffeeTile(
                        coffeeImagePath: tileData['imagePath'],
                        coffeeName: tileData['name'],
                        coffeePrice: tileData['price'],
                        coffeeRating: tileData['rating'],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          );
        }).toList();
      }
    }
    return [];
  }

  List<Widget> getNewItems() {
    final List<Map<String, String>> newItemsData = [
      {
        'name': 'Blueberry Muffin',
        'price': '80',
        'imagePath': 'images/coffees/other/blueberry muffin.png',
        'desc': 'Dive into the delightful freshness of our Blueberry Muffin, baked to perfection with plump, juicy blueberries nestled within a moist and tender crumb. Each bite is a burst of sweet and tangy flavor, with the buttery richness of the muffin base perfectly complementing the vibrant burst of blueberries. Whether enjoyed with a morning coffee or as a satisfying snack any time of day, our Blueberry Muffin promises to awaken your taste buds and leave you craving for more.'
      },
      {
        'name': 'Cinnamon Bar',
        'price': '100',
        'imagePath': 'images/coffees/other/cinnamon bar.png',
        'desc': 'Indulge in the irresistible allure of our Cinnamon Bar, a heavenly treat that combines the warmth of cinnamon with the buttery goodness of a soft and chewy bar. With each bite, youll be greeted by the comforting aroma of cinnamon, followed by the delicate crunch of sugar crystals and the soft, melt-in-your-mouth texture of the bar itself. Perfectly paired with a cup of coffee or enjoyed on its own, our Cinnamon Bar offers a blissful escape into sweetness and spice.'
      },
      {
        'name': 'Quasso',
        'price': '70',
        'imagePath': 'images/coffees/other/croissant.png',
        'desc': 'freshly baked Croissant, handcrafted to perfection with layers of flaky, buttery pastry that delicately melt in your mouth with every bite. Light and airy, yet rich and indulgent, our Croissant is the epitome of French pastry craftsmanship. Whether enjoyed plain or filled with your favorite ingredients, each bite offers a symphony of textures and flavors that transport you to the bustling streets of Paris with every decadent mouthful.'
      },
      {
        'name': 'Glazed Donut',
        'price': '80',
        'imagePath': 'images/coffees/other/glazed donut.png',
        'desc': 'Treat yourself to the timeless allure of our Glazed Donut, a delectable indulgence that captivates with its golden-brown exterior, delicately crispy yet irresistibly soft texture, and a luscious glaze that glistens enticingly in the light. With each heavenly bite, youll experience the perfect balance of sweetness and lightness, making our Glazed Donut the ultimate temptation for any occasion. Whether savored with a cup of coffee or enjoyed as a delightful snack on its own, our Glazed Donut promises to satisfy your cravings and leave you longing for more.'
      },
    ];

    return [
      // Spacer bar with "New Items" title
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          'NEW ITEMS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "JosefinSans"
          ),
        ),
      ),

      // New Items list
      ...newItemsData.map<Widget>((item) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemDetailsPage(
                  imagePath: item['imagePath']!,
                  itemName: item['name']!,
                  itemPrice: item['price']!,
                  itemRating: 'No Rating for New Items', // No rating for new items
                  addItemToCart: addItemToCart,
                  itemDescription: item['desc']!,
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  1.0,
                ],
                colors: [
                  Colors.white,
                  const Color.fromARGB(255, 187, 120, 58),
                ]
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      item['imagePath']!,
                      height: 65,
                      width: 65,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          
                          item['name']!,
                          style: TextStyle(fontSize: 27, color: Colors.black, fontFamily: "Bright"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('\₱' + 
                          item['price']!,
                          style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.new_releases,
                  color: Color.fromARGB(255, 31, 29, 24),
                  size: 25,
                )
              ],
            ),
          ),
        );
      }).toList(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('images/bg1.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop)),
                          ),

              margin: EdgeInsets.symmetric(vertical: 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [

                      Image(
                        image: AssetImage(
                          'images/logo.png',
                        ),
                        color: Colors.white,
                        height: 200,
                      ),

                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              child: ListView.builder(
                itemCount: coffeeType.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeType: coffeeType[index]['name'],
                    isSelected: coffeeType[index]['selected'],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  );
                },
              ),
            ),
            Column(
              children: getFilteredCategories(),
            ),
            SizedBox(height: 10),
            Column(
              children: getNewItems(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(
      cartItems: cartItems,
      removeItemFromCart: (int index) {
        setState(() {
          cartItems.removeAt(index);
        });
      },
      addItemToCart: (String name, String price, int quantity) {
        setState(() {
          cartItems.add({
            'name': name,
            'price': price,
            'quantity': quantity,
          });
        });
      },
    ),
    );
  }
}
