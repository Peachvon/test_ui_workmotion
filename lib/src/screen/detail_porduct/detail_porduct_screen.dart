// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:workmotion_test/MyIcon/my_icon_icons.dart';
import 'package:workmotion_test/src/confic/theme.dart' as CustomTheme;
import 'package:workmotion_test/src/screen/cart/cart_screen.dart';
import 'package:workmotion_test/src/screen/detail_porduct/widget/view_detail_widget.dart';
import 'package:workmotion_test/src/screen/detail_porduct/widget/view_product.widget.dart';
import 'package:workmotion_test/src/screen/detail_porduct/widget/view_service_widget.dart';
import 'package:workmotion_test/src/shared_widget/bar_widget.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({Key? key, required this.data}) : super(key: key);
  final Map<dynamic, dynamic> data;
  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: BuildAppBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                alignment: Alignment.topCenter,
                width: Width,
                child: Column(
                  children: [
                    ViewProductWidget(data: widget.data),
                    ViewDetailWidget(data: widget.data),
                    SizedBox(height: 1),
                    ViewServiceWidget(),
                    SizedBox(height: 5),
                    BarWidget(Message: 'โค้ดส่วนลดจากร้านค้า'),
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      height: 1000,
                    )
                  ],
                ),
              )
            ],
          ),
          AddProductWidget(Width)
        ],
      ),
    );
  }

  SafeArea AddProductWidget(double Width) {
    Container Cart(Color color) {
      return Container(
        height: 55,
        width: Width * 0.15,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Icon(
          MyIcon.add_shopping_cart,
          color: Colors.white,
        ),
      );
    }

    Container BuyProduct(Color color) {
      return Container(
        alignment: Alignment.center,
        height: 55,
        width: Width * 0.8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          'ซื้อสินค้า',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      );
    }

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 55,
                width: Width,
                child: Row(
                  children: [
                    if (widget.data['inventories'] == 0)
                      Cart(Colors.grey)
                    else
                      InkWell(
                        onTap: () {},
                        child: Cart(CustomTheme.Theme.BgCart),
                      ),
                    Spacer(),
                    if (widget.data['inventories'] == 0)
                      BuyProduct(Colors.grey)
                    else
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartScreen()));
                          },
                          child: BuyProduct(CustomTheme.Theme.BgbuyProduct)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      centerTitle: false,
      title: Text(widget.data['name']),
      actions: [
        Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topRight,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(
                  MyIcon.cart,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text('8'),
              )
            ],
          ),
        )
      ],
    );
  }
}
