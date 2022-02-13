// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:workmotion_test/src/confic/theme.dart' as CustomTheme;
import 'package:workmotion_test/src/screen/detail_porduct/detail_porduct_screen.dart';

class DetailProductListWidget extends StatelessWidget {
  const DetailProductListWidget(
      {Key? key, required this.data, required this.index})
      : super(key: key);
  final int index;

  final List<Map> data;
  @override
  Widget build(BuildContext context) {
    double Price = data[index]['price'] -
        (data[index]['persen_discount'] * data[index]['price']);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 0.0,
            spreadRadius: 0.0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailProductScreen(data: data[index])),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: ImageWidget(),
                  ),
                  if (data[index]['inventories'] != 0)
                    Expanded(
                      flex: 1,
                      child: DetailProductWidget(Price),
                    )
                  else
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    )
                ],
              ),
              if (data[index]['bool_discount'] == true)
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 45,
                  color: CustomTheme.Theme.BgPersenDiscount,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ลด',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '${data[index]['persen_discount'] * 100}%',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              if (data[index]['inventories'] == 0)
                Expanded(
                  child: Stack(
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
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: SizedBox(),
                          ),
                          if (data[index]['inventories'] == 0)
                            Expanded(
                              flex: 1,
                              child: DetailProductWidget(Price),
                            )
                          else
                            Expanded(
                              flex: 1,
                              child: SizedBox(),
                            )
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Padding DetailProductWidget(double Price) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              AutoSizeText(
                data[index]['detail'],
                style: TextStyle(fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              if (data[index]['bool_discount'] == true)
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          '฿ ${data[index]['price'].toString()}',
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
                        style: TextStyle(color: CustomTheme.Theme.TextPrice),
                      ),
                    ),
                  ],
                )
              else
                Text(
                  '฿ ${data[index]['price'].toString()}',
                  style: TextStyle(color: CustomTheme.Theme.TextPrice),
                ),
            ],
          )),
    );
  }

  Stack ImageWidget() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Image.asset(
          data[index]['image'],
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
