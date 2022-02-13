// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:workmotion_test/app.dart';
import 'package:workmotion_test/src/model/cart_model.dart';
import 'package:workmotion_test/src/screen/cart/widget/address_widget.dart';
import 'package:workmotion_test/src/screen/cart/widget/list_cart_widget.dart';
import 'package:workmotion_test/src/confic/theme.dart' as CustomTheme;
import 'package:workmotion_test/src/screen/payment/payment_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List Cart = CartModel().CartList;
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('รถเข็น'),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Stack(children: [
        ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: Width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  AddressWidget(),
                  ListCartWidget(),
                ],
              ),
            ),
          ],
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: Width,
                height: 110,
                color: Colors.white,
                child: SafeArea(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('รวมราคาทั้งหมด 5247.4 บาท'),
                          Container(
                            width: 120,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentScreen()));
                              },
                              child: Text(
                                'ยืนยัน',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: CustomTheme.Theme.BgConfirm,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
