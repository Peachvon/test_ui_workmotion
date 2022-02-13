// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:workmotion_test/MyIcon/my_icon_icons.dart';
import 'package:workmotion_test/src/confic/theme.dart' as CustomTheme;

class ViewDetailWidget extends StatefulWidget {
  const ViewDetailWidget({Key? key, required this.data}) : super(key: key);
  final Map<dynamic, dynamic> data;
  @override
  State<ViewDetailWidget> createState() => _ViewDetailWidgetState();
}

class _ViewDetailWidgetState extends State<ViewDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(widget.data['detail'])),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('คะแนน 4.2'),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Container(
                        width: 1,
                        color: Colors.grey,
                        child: Text(''),
                      ),
                    ),
                    Text('สินค้าคงเหลือ ${widget.data['inventories']} ชิ้น'),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(MyIcon.favorite_border),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
