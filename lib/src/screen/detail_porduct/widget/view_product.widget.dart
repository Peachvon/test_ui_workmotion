// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:workmotion_test/src/confic/theme.dart' as CustomTheme;

class ViewProductWidget extends StatefulWidget {
  const ViewProductWidget({Key? key, required this.data}) : super(key: key);
  final Map<dynamic, dynamic> data;
  @override
  State<ViewProductWidget> createState() => _ViewProductWidgetState();
}

class _ViewProductWidgetState extends State<ViewProductWidget> {
  late double price = widget.data['price'];
  late double price_discount = price - (widget.data['persen_discount'] * price);
  late double save = price - price_discount;
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Container(
      height: Height * 0.5,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Container(
                  width: Width,
                  color: Colors.white,
                  child: Image.asset(
                    widget.data['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                if (widget.data['inventories'] == 0)
                  Stack(
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
                      Center(
                        child: Text(
                          'สินค้าหมด',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              color: CustomTheme.Theme.BgPrice,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Spacer(),
                        if (widget.data['bool_discount'] == true)
                          Text(
                            'ประหยัด ${save.toStringAsPrecision(3)} บาท',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        else
                          Text(
                            'ประหยัด 0 บาท',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        Spacer(),
                        if (widget.data['bool_discount'] == true)
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Text(
                                    '฿ ${widget.data['price'].toStringAsPrecision(3)}',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 70,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Text(
                                '฿ ${price_discount.toStringAsPrecision(3)}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        else
                          Text(
                            '฿ ${price.toStringAsPrecision(3)}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        Spacer(),
                        Spacer(),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Spacer(),
                        Text(
                          'ขายไปแล้ว ${widget.data['product_sold']}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'คะแนน ${widget.data['review_score']}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
