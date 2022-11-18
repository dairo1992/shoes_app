import 'package:flutter/material.dart';

class CustonButtom extends StatelessWidget {
  final String text;
  const CustonButtom({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(100)),
      child: Text(text,
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}
