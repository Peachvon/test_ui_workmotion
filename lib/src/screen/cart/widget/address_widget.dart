import 'package:flutter/material.dart';
import 'package:workmotion_test/MyIcon/my_icon_icons.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ที่อยู่สำหรับจัดส่ง',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(height: 5),
                Container(
                  width: Width * 0.8,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'พีช ',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                        Text(
                          '138/238 asdasdasdasdasdasdasdasdasdasdadasdasdasdasdasdasdasdasdasdasdasdsa^j',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                        Text(
                          '0888888888',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(MyIcon.pencil),
            ),
          ],
        ),
      ),
    );
  }
}
