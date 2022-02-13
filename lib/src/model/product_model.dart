// ignore_for_file: non_constant_identifier_names

class ProductModel {
  List<Map> ProductList = [
    {
      'product_id': 1,
      'name': 'ปากกา',
      'detail': 'ปากกาลูกลื่น 0.7 มม. หมึกสีน้ำเงินด้ามน้ำเงิน',
      'image': 'assets/images/product/image1.jpg',
      'price': 10.5,
      'persen_discount': 0.1,
      'bool_discount': true,
      'inventories': 100,
      'product_sold': 30,
      'review_score': 4.2,
    },
    {
      'product_id': 2,
      'name': 'ดินสอ',
      'detail': 'ดินสอไม้HB เกรดA(พร้อมส่ง)ดินสอด้ามไม้ ยาว 19 CM',
      'image': 'assets/images/product/image2.jpg',
      'price': 5.0,
      'persen_discount': 0.0,
      'bool_discount': false,
      'inventories': 100,
      'product_sold': 0,
      'review_score': 0.0,
    },
    {
      'product_id': 3,
      'name': 'สีไม้',
      'detail': 'สีไม้ colleen 24สี, 36สี,48สี(2หัว)',
      'image': 'assets/images/product/image3.jpg',
      'price': 50.0,
      'persen_discount': 0.25,
      'bool_discount': true,
      'inventories': 0,
      'product_sold': 21,
      'review_score': 1.2,
    },
    {
      'product_id': 4,
      'name': 'กระดาษ',
      'detail': 'กระดาษถ่ายเอกสารA4 250แผ่น/ห่อ-ขาว-A4(210 x 297 มม.)',
      'image': 'assets/images/product/image4.jpg',
      'price': 30.0,
      'persen_discount': 0.15,
      'bool_discount': true,
      'inventories': 100,
      'product_sold': 0,
      'review_score': 0.0,
    },
    {
      'product_id': 5,
      'name': 'ยางลบ',
      'detail':
          'ยางลบดินสอ(แพ็ค3ก้อน)ยางลบก้อนขาว STAEDTLER ไม่เป็นขุย ไม่ทำลายเนื้อกระดาษ รุ่น 526 35 F',
      'image': 'assets/images/product/image5.jpg',
      'price': 3.0,
      'persen_discount': 0.0,
      'bool_discount': false,
      'inventories': 100,
      'product_sold': 20,
      'review_score': 0.0,
    },
    {
      'product_id': 6,
      'name': 'จอคอม',
      'detail': '(ว่าง)',
      'image': 'assets/images/product/image6.jpg',
      'price': 10.0,
      'persen_discount': 0.0,
      'bool_discount': false,
      'inventories': 100,
      'product_sold': 0,
      'review_score': 0.0,
    }
  ];

  ProductModel();
}
