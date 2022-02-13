// ignore_for_file: unused_local_variable, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workmotion_test/src/screen/credit_card/credit_card_screen.dart';
import 'package:workmotion_test/src/shared_widget/bar_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        title: Text('Payment'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: Width,
                    child: Text(
                        'This service is safe to use. The only risk is if anyone is literally looking at your screen while you use the application'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreditCardScreen()));
                  },
                  child: BarWidget(Message: 'Credit/DebitCard'),
                ),
                SizedBox(height: 10),
                BarWidget(Message: 'QR Code'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
