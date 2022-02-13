import 'package:flutter/material.dart';

class BarWidget extends StatefulWidget {
  const BarWidget({Key? key, required this.Message}) : super(key: key);
  final String Message;
  @override
  State<BarWidget> createState() => _BarWidgetState();
}

class _BarWidgetState extends State<BarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(widget.Message), Icon(Icons.arrow_forward_ios)],
        ),
      ),
    );
  }
}
