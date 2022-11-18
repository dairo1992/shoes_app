import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ZapatoScreen extends StatelessWidget {
  const ZapatoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const CustomAppBar(
          text: "For you",
        ),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              ZapatoSizePreview(
                fullScreen: false,
              ),
              const ZapatoDescripcion(
                titulo: 'Nike Air Max 720',
                descripcion:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              ),
            ]),
          ),
        ),
        AgregarCarritoButton(valor: 180.0)
      ],
    ));
  }
}
