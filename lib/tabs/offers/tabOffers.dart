// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabOffers extends StatefulWidget {
  // final List<Map<String, dynamic>> offers;
  const TabOffers({Key? key}) : super(key: key);

  @override
  State<TabOffers> createState() => _TabOffersState();
}

class _TabOffersState extends State<TabOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Offer For You",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images/offers/dana_offers.jpg",
                      // height: 400,
                      // width: 200,
                      width: 300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/apps/dana.jpg",
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dana",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Dompet Digital",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Row(
                            children: [
                              Text(
                                "4.8",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                LineAwesomeIcons.star_1,
                                color: Colors.grey,
                                size: 12,
                              )
                            ],
                          ),
                        ],
                        // column = cross > kanan kiri, main > atas bawah
                        // row = cross > atas bawah, main > kanan kiri
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
