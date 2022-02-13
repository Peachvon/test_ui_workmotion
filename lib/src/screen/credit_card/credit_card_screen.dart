// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:workmotion_test/src/screen/credit_card/widget/button_sum.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        title: Text('Credit/Debit Card'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('Add Credit/Debit Card'),
                      Text('PayPal'),
                    ],
                  ),
                ),
                Card(
                  margin: const EdgeInsets.only(bottom: 22),
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 30, left: 28, right: 28),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextField(
                          //controller: widget.usernameController,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // labelText: 'Card Number',
                            hintText: 'Card Number',
                          ),
                        ),
                        Divider(
                            height: 10, thickness: 2, indent: 0, endIndent: 0),
                        TextField(
                          //controller: widget.usernameController,
                          style: TextStyle(),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // labelText: 'Cardholder Name',
                            hintText: 'Cardholder Name',
                          ),
                        ),
                        Divider(
                            height: 10, thickness: 2, indent: 0, endIndent: 0),
                        Row(
                          children: [
                            Container(
                              width: Width * 0.4,
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  TextField(
                                    //controller: widget.usernameController,
                                    style: TextStyle(),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      // labelText: 'Cardholder Name',
                                      hintText: 'Expiration(MM/YY)',
                                    ),
                                  ),
                                  Divider(
                                      height: 10,
                                      thickness: 2,
                                      indent: 0,
                                      endIndent: 28),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              width: Width * 0.2,
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  TextField(
                                    //controller: widget.usernameController,
                                    style: TextStyle(),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      // labelText: 'Cardholder Name',
                                      hintText: 'CVV',
                                    ),
                                  ),
                                  Divider(
                                      height: 10,
                                      thickness: 2,
                                      indent: 0,
                                      endIndent: 13),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonSumWidget(),
        ],
      ),
    );
  }
}
