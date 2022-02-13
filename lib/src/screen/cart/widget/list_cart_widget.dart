// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workmotion_test/MyIcon/my_icon_icons.dart';
import 'package:workmotion_test/src/model/cart_model.dart';
import 'package:workmotion_test/src/model/product_model.dart';
import 'package:workmotion_test/src/confic/theme.dart' as CustomTheme;

class ListCartWidget extends StatefulWidget {
  const ListCartWidget({Key? key}) : super(key: key);

  @override
  State<ListCartWidget> createState() => _ListCartWidgetState();
}

class _ListCartWidgetState extends State<ListCartWidget> {
  List Cart = CartModel().CartList;
  List<Map> Product = ProductModel().ProductList;

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: Height * 0.7,
        child: ListView.builder(
          itemCount: Cart.length,
          itemBuilder: (BuildContext context, int index) {
            double Price = Product[Cart[index] - 1]['price'] -
                (Product[Cart[index] - 1]['persen_discount'] *
                    Product[Cart[index] - 1]['price']);
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: Width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 24, right: 24),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 2.0,
                                  spreadRadius: 2.0,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              Product[Cart[index] - 1]['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Container(
                                width: 230,
                                child: Text(
                                  Product[Cart[index] - 1]['detail'],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Spacer(),
                              if (Product[Cart[index] - 1]['bool_discount'] ==
                                  true)
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Text(
                                          '฿ ${Product[Cart[index] - 1]['price'].toString()}',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Container(
                                          height: 1,
                                          width: 40,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        '฿ ${Price.toString()}',
                                        style: TextStyle(
                                            color: CustomTheme.Theme.TextPrice),
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Text(
                                  '฿ ${Product[Cart[index] - 1]['price'].toString()}',
                                  style: TextStyle(
                                      color: CustomTheme.Theme.TextPrice),
                                ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(MyIcon.trash),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
