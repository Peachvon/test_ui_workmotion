// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class PrimeNumberScreen extends StatefulWidget {
  const PrimeNumberScreen({Key? key}) : super(key: key);

  @override
  State<PrimeNumberScreen> createState() => _PrimeNumberScreenState();
}

class _PrimeNumberScreenState extends State<PrimeNumberScreen> {
  late TextEditingController? inputController;

  List PN = [];
  @override
  void initState() {
    inputController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('หาจำนวนเฉพาะ'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('จำนวน'),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: inputController,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Container(
                width: 300,
                child: FlatButton(
                  onPressed: () {
                    Calculate();
                  },
                  child: Text(
                    'Sub',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                    itemCount: PN.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(PN[index].toString());
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void Calculate() {
    int X = int.parse(inputController!.text);

    PN = [];

    for (int i = 1; i <= X; i++) {
      if ((i == 1 || i % 2 == 0 || i % 3 == 0 || i % 5 == 0 || i % 7 == 0) &&
          (i != 2 && i != 3 && i != 5 && i != 7)) {
      } else {
        PN.add(i);
      }
    }
    setState(() {});
  }
}
