import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class AgregarCarritoButton extends StatelessWidget {
  final double valor;

  const AgregarCarritoButton({required this.valor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Text(
              '\$$valor',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const CustonButtom(
              text: 'Add to cart',
            ),
            SizedBox(width: 20)
          ],
        ),
      ),
    );
  }
}
