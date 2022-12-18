import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app2/providers/admin_provider.dart';
import '../models/offers/offer_menu_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AdminProvider>(context);
    return  Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 120,
              ),
              Row(
                children: [
                  const Text(
                    'All Categories',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 13),
                  ),
                  const SizedBox(
                    width: 210,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // Row(children: <Widget>[
              //   Expanded(
              //       child: SizedBox(
              //           height: 120.0,
              //           child: ListView.builder(
              //               shrinkWrap: true,
              //               scrollDirection: Axis.horizontal,
              //               // physics: const NeverScrollableScrollPhysics(),
              //               itemCount: provider.allCategories!.length,
              //               itemBuilder: (context, index) {
              //                 return CategoryWidget(provider.allCategories![index]);
              //               })))
              // ]),
              Row(
                children: [
                  const Text(
                    'Exclusive Offers',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 13),
                  ),
                  const SizedBox(
                    width: 195,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // Row(children: <Widget>[
              //   Expanded(
              //       child: SizedBox(
              //           height: 150.0,
              //           child: ListView.builder(
              //               shrinkWrap: true,
              //               scrollDirection: Axis.horizontal,
              //               // physics: const NeverScrollableScrollPhysics(),
              //               itemCount: offerData.length,
              //               itemBuilder: (context, index) {
              //                 return OfferMenuModel(offerData[index]);
              //               })))
              // ]),
              // const SizedBox(
              //   height: 25,
              // ),
              // Row(
              //   children: [
              //     const Text(
              //       'Top Picked',
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontWeight: FontWeight.bold,
              //           letterSpacing: 1,
              //           fontSize: 13),
              //     ),
              //     const SizedBox(
              //       width: 220,
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: const Text(
              //         'View All',
              //         style: TextStyle(
              //             color: Colors.green,
              //             fontWeight: FontWeight.bold,
              //             letterSpacing: 1,
              //             fontSize: 13),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 25,
              // ),
              // Row(children: <Widget>[
              //   Expanded(
              //       child: SizedBox(
              //           height: 300.0,
              //           child: ListView.builder(
              //               shrinkWrap: true,
              //               scrollDirection: Axis.horizontal,
              //               // physics: const NeverScrollableScrollPhysics(),
              //               itemCount: topPicked.length,
              //               itemBuilder: (context, index) {
              //                 return TopPickedModel(topPicked[index]);
              //               })))
              // ]),
              // const SizedBox(
              //   height: 25,
              // ),
              // Row(
              //   children: [
              //     const Text(
              //       'Product For You',
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontWeight: FontWeight.bold,
              //           letterSpacing: 1,
              //           fontSize: 13),
              //     ),
              //     const SizedBox(
              //       width: 210,
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: const Text(
              //         'View All',
              //         style: TextStyle(
              //             color: Colors.green,
              //             fontWeight: FontWeight.bold,
              //             letterSpacing: 1,
              //             fontSize: 12),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 25,
              // ),
              // Row(children: <Widget>[
              //   Expanded(
              //       child: SizedBox(
              //           height: 300.0,
              //           child: ListView.builder(
              //               shrinkWrap: true,
              //               scrollDirection: Axis.horizontal,
              //               // physics: const NeverScrollableScrollPhysics(),
              //               itemCount: topPicked.length,
              //               itemBuilder: (context, index) {
              //                 return TopPickedModel(topPicked[index]);
              //               })))
              // ]),
            ]),
          ),
        ));

  }
}
