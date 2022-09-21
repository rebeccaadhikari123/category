import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF981F1E),
        title: const Text(
          'CATEGORIES',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 100,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.burger,
                  color: Colors.black,
                ),
                title: const Text('Food & Drinks',
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    // showDialog(
                    //     context: context,
                    //     builder: (_) => AlertDialog(
                    //           shape: const RoundedRectangleBorder(
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(10.0))),
                    //           content: Builder(
                    //             builder: (context) {
                    //               return Container(
                    //                   height: 200,
                    //                   width: 300,
                    //                   child: Column(
                    //                     children: [
                    //                       Text(
                    //                         'Food & Drinks Price',
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.bold,
                    //                           fontSize: 20,
                    //                         ),
                    //                       ),
                    //                       SizedBox(
                    //                         height: 20,
                    //                       ),
                    //                       Text('100'),
                    //                     ],
                    //                   ));
                    //             },
                    //           ),
                    //         ));
                    bottomSheet(context, 'Food & Drinks');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
                title: const Text('Shopping',
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Shopping');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.house_siding,
                  color: Colors.black,
                ),
                title: const Text(
                  'Housing',
                  textScaleFactor: 1.5,
                ),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Housing');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.emoji_transportation,
                  color: Colors.black,
                ),
                title: const Text(
                  'Transportation',
                  textScaleFactor: 1.5,
                ),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Transportation');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.discord_sharp,
                  color: Colors.black,
                ),
                title: const Text(
                  'Life & Entertainment',
                  textScaleFactor: 1.5,
                ),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Life & Entertainment');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.laptop,
                  color: Colors.black,
                ),
                title: const Text(
                  'Communication',
                  textScaleFactor: 1.5,
                ),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Communication');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.money,
                  color: Colors.black,
                ),
                title: const Text(
                  'Financial expenses',
                  textScaleFactor: 1.5,
                ),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Financial expenses');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.invert_colors_on_rounded,
                  color: Colors.black,
                ),
                title: const Text(
                  'Fashion',
                  textScaleFactor: 1.5,
                ),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Fashion');
                  });
                },
              ),
              seperation(),
              ListTile(
                leading: const Icon(
                  Icons.settings_backup_restore,
                  color: Colors.black,
                ),
                title: const Text(
                  'Others',
                  textScaleFactor: 1.5,
                ),
                onTap: () {
                  setState(() {
                    bottomSheet(context, 'Others');
                  });
                },
              ),
              seperation(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> bottomSheet(
    BuildContext context,
    String title,
  ) {
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 500,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                seperation(),
                SizedBox(
                  height: 10,
                ),
                Text('price here'),
              ],
            ),
          ),
        );
      },
    );
  }

  Container seperation() {
    return Container(
      width: double.infinity,
      height: 2,
      color: Colors.black12,
    );
  }

  /* List<Category> categories = [
  Category(
    name: 'food and drinks',
    icon: FontAwesomeIcons.knifeand forks,
  ),
  Category(
    name: 'Shopping',
    icon: FontAwesomeIcons.shoppingcart,
  ),
  Category(
    name: 'Housing',
    icon: FontAwesomeIcons.house,
  ),
  Category(
    name: 'Transportation',
    icon: FontAwesomeIcons.truck,
  ),
  Category(
    name: 'vehicle',
    icon: FontAwesomeIcons.car,
  ),
  Category(
    name: 'Life And Entertainment ',
    icon: FontAwesomeIcons.person,
  ),
  Category(
    name: 'Coomunication,PC ',
    icon: FontAwesomeIcons.Personal Computer,
  ),
Category(
    name: 'Financial expenses',
    icon: FontAwesomeIcons.coins,
  ),
Category(
    name: 'Investments ',
    icon: FontAwesomeIcons.blackfilled vector,
  ),
Category(
    name: 'Fashion ',
    icon: FontAwesomeIcons.Dresses,
  ),
Category(
    name: 'Others',
    icon: FontAwesomeIcons.Personal Computer,
  ),
]
*/
}
