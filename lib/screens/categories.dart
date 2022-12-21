import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app2/Routers/app_router.dart';
import 'package:social_app2/screens/Categories/beverage_categories.dart';
import 'package:social_app2/screens/Categories/fishes.dart';

import '../data/iconBarData.dart';
import '../models/Icons/category_icons_bar.dart';
import '../providers/auth_provider.dart';
import '../providers/bottom_navigation_bar_provider.dart';
import 'Categories/Baby_care_categories.dart';
import 'Categories/bakery.dart';
import 'Categories/coffee.dart';
import 'Categories/sweet.dart';
import 'login_screen.dart';

class AllCategories extends StatelessWidget {
  List path = [
    AllBeveragesScreen(),
    AllBabyCareCategoriesScreen(),
    AllBakeriesCategoryScreen(),
    AllFishesCategoryScreen(),
    AlCoffeeCategoryScreen(),
    AllSweetsCategoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
        appBar: AppBar(
            title: const Text('Categories'),
            leading: InkWell(
                onTap: () {
                  Provider.of<AuthProvider>(context, listen: false).signOut();
                  AppRouter.appRouter.goToWidget(SignInScreen());
                },
                child: const Icon(Icons.logout)),
            backgroundColor: Colors.green,
            actions: [
              IconButton(
                  onPressed: () {
                    provider.scaffoldKey.currentState?.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                  ))
            ]),
        body: Container(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: iconData!.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      AppRouter.appRouter.goToWidget(path[index]);
                    },
                    child: CategoryIconBar(iconData[index]));
              }),
        ));
  }
}
