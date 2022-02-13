import 'package:flutter/material.dart';
import 'package:workmotion_test/src/model/product_model.dart';
import 'package:workmotion_test/src/screen/menu/widget/detail_product_list_widget.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight);
    final double itemWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Shopping Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: GridView.count(
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: size.width / (itemHeight / 1.45),
          crossAxisCount: 2,
          children: List.generate(ProductModel().ProductList.length, (index) {
            return DetailProductListWidget(
              data: ProductModel().ProductList,
              index: index,
            );
          }),
        ),
      ),
    );
  }
}
