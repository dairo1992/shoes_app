import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ZapatoDescScreen extends StatelessWidget {
  const ZapatoDescScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ZapatoSizePreview(fullScreen: true),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const ZapatoDescripcion(
                titulo: 'Nike Air Max 720',
                descripcion:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
