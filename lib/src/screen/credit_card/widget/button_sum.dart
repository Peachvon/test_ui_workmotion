import 'package:flutter/material.dart';
import 'package:workmotion_test/src/confic/theme.dart' as CustomTheme;

class ButtonSumWidget extends StatelessWidget {
  const ButtonSumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Center(
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
                      Text('ยอดรวม 5247.4 บาท'),
                      Container(
                        width: 120,
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'ชำระเงิน',
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
    );
  }
}
