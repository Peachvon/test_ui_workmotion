import 'package:flutter/material.dart';
import 'package:workmotion_test/MyIcon/my_icon_icons.dart';

class ViewServiceWidget extends StatefulWidget {
  const ViewServiceWidget({Key? key}) : super(key: key);

  @override
  State<ViewServiceWidget> createState() => _ViewServiceWidgetState();
}

class _ViewServiceWidgetState extends State<ViewServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // ignore_for_file: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  children: [
                    Icon(MyIcon.shield_check),
                    SizedBox(width: 5),
                    Text('ของแท้ 100%'),
                  ],
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(MyIcon.replay),
                    SizedBox(width: 5),
                    Text('คืนเงิน/สินค้า ภายใน 15 วัน'),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(MyIcon.motorcycle),
                SizedBox(width: 10),
                Text('ส่งฟรี'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
