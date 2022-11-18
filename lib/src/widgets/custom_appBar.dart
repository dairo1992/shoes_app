import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  const CustomAppBar({required this.text});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          // height: 150,
          // color: Colors.red,
          child: Row(
            children: [
              Text(text,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w700)),
              const Spacer(),
              const Icon(Icons.search, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
